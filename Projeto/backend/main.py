from typing import Optional
from fastapi import FastAPI
import boto3
import json
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import math

app = FastAPI()
origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class Item(BaseModel):
    required: list
    
def get_prices_from_aws():
    f=open("aws.json", "r")
    contents = f.read()
    """
    if contents == '':
        f = open("aws.json","w+")
        client = boto3.client('pricing')
        first = 1
        response = {}
        aws_prices = []
        while (first or "NextToken" in response):
            first = 0
            response = client.get_products(
                ServiceCode='AmazonEC2',
                Filters=[
                    {
                        'Type': 'TERM_MATCH',
                        'Field': 'productFamily',
                        'Value': 'Compute Instance'
                    },
                    {
                        'Type': 'TERM_MATCH',
                        'Field': 'operatingSystem',
                        'Value': 'Linux'
                    },
                    #{
                    #    'Type': 'TERM_MATCH',
                    #    'Field': 'vcpu',
                    #    'Value': '128'
                    #},
                    {
                        'Type': 'TERM_MATCH',
                        'Field': 'location',
                        'Value': 'South America (Sao Paulo)'
                    }
                ],
                FormatVersion='aws_v1',
                NextToken=response['NextToken'] if "NextToken" in response else ''
            )

            for i in response['PriceList']:
                x = json.loads(i)
                aws_prices.append(x)
        f.write(json.dumps(aws_prices))
        contents = json.dumps(aws_prices)
    """
    content = json.loads(contents)
    f.close()
    return content



@app.get("/")
def read_root():
    return get_prices_from_aws()

@app.get("/prices")
def read_prices():
    prices = []
    for i in get_prices_from_aws():
        price = {}
        price['provider'] = 'AWS'
        price['instanceType'] = i['product']['attributes']['instanceType']
        price['tenancy'] = i['product']['attributes']['tenancy']
        price['sku'] = i['product']['sku']
        price['memory'] = float(i['product']['attributes']['memory'].replace(" GiB", ""))
        price['vcpu'] = float(i['product']['attributes']['vcpu'])
        temp = i['product']['attributes']['storage'].split(' ')
        if temp[0]!='EBS' and temp[2]!='EBS' and temp[0]!='NVMe' and temp[2]!='NVMe':
            price['storage'] = float(temp[0]) * float(temp[2])
        else:
            price['storage'] = 0
        for x in i['terms']['OnDemand']:
            for z in i['terms']['OnDemand'][x]['priceDimensions']:
                price['priceUnit'] = i['terms']['OnDemand'][x]['priceDimensions'][z]['unit']
                price['price'] = float(i['terms']['OnDemand'][x]['priceDimensions'][z]['pricePerUnit']['USD'])
        if float(price['price']) > 0:
            prices.append(price)
    return prices

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}


@app.put("/solve")
def solve(item: Item):
    required=item.required
    available = read_prices()
    return solution(required, available)


def solution(instances_required, instances_available):
    from ortools.linear_solver import pywraplp
    solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

    #Parametros
    M = len(instances_required)
    N = len(instances_available)

    Aij = []
    for i in range(0,M):
        x = []
        for j in range(0,N):
            x.append(float(instances_available[j]['price']))
        Aij.append(x)

    Pi = []
    for i in range(0,M):
        Pi.append([float(instances_required[i]['memory']),float(instances_required[i]['vcpu']),float(instances_required[i]['storage'])])

    Sj = []
    for j in range(0,N):
        Sj.append([float(instances_available[j]['memory']),float(instances_available[j]['vcpu']),float(instances_available[j]['storage'])])

    #Variáveis de Decisão
    yij = [[[solver.NumVar(0,min(Pi[i][0],Sj[j][0]),'Y%d%d0'%(i,j)), solver.NumVar(0,min(Pi[i][1],Sj[j][1]),'Y%d%d1'%(i,j)), solver.NumVar(0,min(Pi[i][2],Sj[j][2]),'Y%d%d2'%(i,j))] for j in range(0,N)] for i in range(0,M)]

    #Restricoes
    for i in range(0,M):
        cty0 = solver.Constraint(Pi[i][0],Pi[i][0],'cty0 i=%d'%(i))
        cty1 = solver.Constraint(Pi[i][1],Pi[i][1],'cty1 i=%d'%(i))
        cty2 = solver.Constraint(Pi[i][2],Pi[i][2],'cty2 i=%d'%(i))
        for j in range(0,N):
            if Pi[i][0] <= Sj[j][0] and Pi[i][1] <= Sj[j][1] and Pi[i][2] <= Sj[j][2]:
                cty0.SetCoefficient(yij[i][j][0],1)
                cty1.SetCoefficient(yij[i][j][1],1)
                cty2.SetCoefficient(yij[i][j][2],1)

    #Função de Objetivo

    objective = solver.Objective()
    for i in range(0, M):
        for j in range(0, N):
            objective.SetCoefficient(yij[i][j][0], Aij[i][j])
            objective.SetCoefficient(yij[i][j][1], Aij[i][j])
            objective.SetCoefficient(yij[i][j][2], Aij[i][j])

    objective.SetMinimization()

    solver.Solve()

    result = []
    for i in range(0,M):
        for j in range(0,N):
            #print(yij[i][j][0].solution_value())
            if  (Pi[i][0]==0 or yij[i][j][0].solution_value() > 0) and (Pi[i][1]==0 or yij[i][j][1].solution_value() > 0) and (Pi[i][2]==0 or yij[i][j][2].solution_value() > 0):
                result.append({"id":instances_available[j]["sku"],"instance_required":instances_required[i], "instance_found":instances_available[j], "countMemory": yij[i][j][0].solution_value(),"countVcpu": yij[i][j][1].solution_value(),"countStorage": yij[i][j][2].solution_value()})
            
    return {"list":result, "total":objective.Value()}
