#from __future__ import print_function
from ortools.linear_solver import pywraplp

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

N = 4 #providers instance counter
P = [
    [1,'AWS','m1.abc',2,3,100,0.5],#provider,instancetype,memory,vcpu,storage,price
    [2,'AWS','m1.def',2,4,500,0.7],
    [3,'GCP','g1.123',2,5,20,0.2],
    [4,'GCP','g1.432',2,6,100,0.4],
]
D = [
    [1,5,200],#count,memory,vcpu,storage
    [2,3,500]
]

#Parametros
M = 2
N = 4
Aij=[
    [0.5,0.7,0.2,0.4],
    [0.5,0.7,0.2,0.4]
]
Mi = [2,4] #memory required by user
Mj = [2,1,1,2] #memory available on each instance

Ci = [2,2] #cpu required by user
Cj = [2,3,2,2] #cpu available on each instance


#Variáveis de Decisão
xij = [[solver.NumVar(0,solver.infinity(),'X%d%d'%(i,j)) for j in range(0,N)] for i in range(0,M)]

#Restricoes
for i in range(0,M):
    ct = solver.Constraint(Mi[i],Mi[i],'ct i=%d'%(i))
    for j in range(0,N):
        ct.SetCoefficient(xij[i][j],1)

for i in range(0,M):
    ct = solver.Constraint(Ci[i],Ci[i],'ct i=%d'%(i))
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

print(Aij)

print('Valor objetivo =',objective.Value())


for i in range(0, M):
    print("[", end=" ")
    for j in range(0, N):
        print( str("{:.2f}".format(xij[i][j].solution_value())),end=" ")
    print("]")

