from typing import Optional
from fastapi import FastAPI
import boto3
import json
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware

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
    mainParam: str

def get_prices_from_aws():
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
    return aws_prices



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
    param = item.mainParam
    return solution(required, available, param)


def solution(instances_required, instances_available, param):
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
        Pi.append(float(instances_required[i][param]))

    Sj = []
    for j in range(0,N):
        Sj.append(float(instances_available[j][param]))

    #Variáveis de Decisão
    xij = [[solver.NumVar(0,min(Sj[j],Pi[i]),'X%d%d'%(i,j)) for j in range(0,N)] for i in range(0,M)]

    #Restricoes
    for i in range(0,M):
        ct = solver.Constraint(Pi[i],Pi[i],'ct i=%d'%(i))
        for j in range(0,N):
            ct.SetCoefficient(xij[i][j],1)

    #for j in range(0,N):
    #    ct = solver.Constraint(Sj[j],Sj[j], 'ct j=%d'%(j))
    #    for i in range(0,M):
    #        ct.SetCoefficient(xij[i][j],1)

    #Função de Objetivo

    objective = solver.Objective()
    for i in range(0, M):
        for j in range(0, N):
            objective.SetCoefficient(xij[i][j], Aij[i][j])

    objective.SetMinimization()

    solver.Solve()

    if objective.Value() > 0:
        result = []
        for i in range(0,M):
            for j in range(0,N):
                if xij[i][j].solution_value() > 0:
                    result.append({"id":instances_available[j]["sku"],"instance_required":instances_required[i], "instance_found":instances_available[j], "paramCount": xij[i][j].solution_value()})

        return {"list":result, "total":objective.Value()}
    else:
        return {"error":"no solution found"}
