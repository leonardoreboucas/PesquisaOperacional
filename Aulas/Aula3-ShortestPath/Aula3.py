#from __future__ import print_function
from ortools.linear_solver import pywraplp

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

#Parametros
N = int(input())
S = int(input())
T = int(input())
Aij=[[float(input()) for j in range(0,N)] for i in range(0, N)]

#Variáveis de Decisão
xij = [[solver.NumVar(0,1,'X%d%d'%(i,j)) for j in range(0,N)] for i in range(0,N)]


#Restricoes
for i in range(0,N):
    if (i == S):
        ct = solver.Constraint(1, 1, 'ct i=%d'%(i))
    if (i == T):
        ct = solver.Constraint(-1,-1, 'ct i=%d'%(i))
    if (i != S and i != T):
        ct = solver.Constraint(0, 0, 'ct i=%d'%(i))
    for j in range(0,N):
        ct.SetCoefficient(xij[i][j],1)
        ct.SetCoefficient(xij[j][i],-1)

#Função de Objetivo

objective = solver.Objective()
for i in range(0, N):
    for j in range(0, N):
        objective.SetCoefficient(xij[i][j], Aij[i][j])

objective.SetMinimization()

solver.Solve()

print('Solucao:')

print('Valor objetivo =',str("{:.1f}".format(objective.Value())))

for i in range(0, N):
    for j in range(0, N):
        print("X"+str(i)+str(j)+" =",str("{:.1f}".format(xij[i][j].solution_value())))
    

5
9999
0.2
9999
9999
9999
9999
9999
0.4
0.5
9999
0.2
9999
9999
0.6
0.2
9999
9999
9999
9999
0.3
9999
9999
9999
9999
9999