#from __future__ import print_function
from ortools.linear_solver import pywraplp

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

#Parametros
M = int(input())
N = int(input())
Aij=[[float(input()) for j in range(0,N)] for i in range(0, M)]
Pi = [float(input()) for i in range(0,M)]
Sj = [float(input()) for j in range(0,N)]

#Variáveis de Decisão
xij = [[solver.NumVar(0,min(Pi[i],Sj[j]),'X%d%d'%(i,j)) for j in range(0,N)] for i in range(0,M)]

#Restricoes
for i in range(0,M):
    ct = solver.Constraint(Pi[i],Pi[i] , 'ct i=%d'%(i))
    for j in range(0,N):
        ct.SetCoefficient(xij[i][j],1)

for j in range(0,N):
    ct = solver.Constraint(Sj[j],Sj[j] , 'ct j=%d'%(j))
    for i in range(0,M):
        ct.SetCoefficient(xij[i][j],1)

#Função de Objetivo

objective = solver.Objective()
for i in range(0, M):
    for j in range(0, N):
        objective.SetCoefficient(xij[i][j], Aij[i][j])

objective.SetMinimization()

solver.Solve()

print('Valor objetivo =',objective.Value())

for i in range(0, M):
    print("[", end=" ")
    for j in range(0, N):
        print(str("{:.2f}".format(xij[i][j].solution_value())),end=" ")
    print("]")
    

4
5
3
9
7
11
9
5
7
1
8
0.50
0.95
0.16
0.14
0.31
0.04
0.08
0.04
0.28
0.84
0.84
0.46
0.01
0.89
0.07
0.21
0.23
0.63
0.15
0.89