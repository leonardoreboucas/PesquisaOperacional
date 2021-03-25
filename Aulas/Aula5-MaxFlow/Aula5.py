#from __future__ import print_function
from ortools.linear_solver import pywraplp

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

#Parametros
N = int(input())
S = int(input())
T = int(input())
bij=[[0 for j in range(0,N)] for i in range(0, N)]
cij=[[float(input()) for j in range(0,N)] for i in range(0, N)]

# cij[0][1] = 5
# cij[0][2] = 7
# cij[1][3] = 5
# cij[1][4] = 7
# cij[2][3] = 2
# cij[2][5] = 2
# cij[3][6] = 3
# cij[4][6] = 8
# cij[5][6] = 5
cij[T][S] = solver.infinity()


#Variáveis de Decisão
xij = [[solver.NumVar(bij[i][j],cij[i][j],'X[%d,%d]'%(i,j)) for j in range(0,N)] for i in range(0,N)]

#Restricoes
for i in range(0,N):
    ct = solver.Constraint(0,0, 'ct i=%d'%(i))
    for j in range(0,N):
        if (i == S):
            ct.SetCoefficient(xij[i][j],1)
            ct.SetCoefficient(xij[T][S],-1)
        elif (i == T):
            ct.SetCoefficient(xij[j][i],1)
            if (j == S):
                ct.SetCoefficient(xij[T][S],-1)
        else:
            ct.SetCoefficient(xij[i][j],1)
            ct.SetCoefficient(xij[j][i],-1)
        
#Função de Objetivo

objective = solver.Objective()
objective.SetCoefficient(xij[T][S], 1)

objective.SetMaximization()

solver.Solve()


print('Valor objetivo =',str(objective.Value()))

for i in range(0, N):
    for j in range(0, N):
        if (xij[i][j].solution_value()>0.0):
            if (i==T and j==S):
                label="X[T,S]"
                max_cap=-1
            else:
                label=xij[i][j].name()
                max_cap=cij[i][j]
            print(label+"="+str("{:.2f}".format(xij[i][j].solution_value()))+" de MAX_CAP: "+str("{:.2f}".format(max_cap)))
    

7
0
6
0.0
1.0
8.0
2.0
5.0
0.0
0.0
0.0
0.0
6.0
1.0
1.0
7.0
10.0
0.0
0.0
0.0
6.0
7.0
6.0
7.0
0.0
0.0
0.0
0.0
10.0
4.0
4.0
0.0
0.0
0.0
0.0
0.0
2.0
1.0
0.0
0.0
0.0
0.0
0.0
0.0
1.0
0.0
0.0
0.0
0.0
0.0
0.0
0.0