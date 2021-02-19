#from __future__ import print_function
from ortools.linear_solver import pywraplp

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

N = int(input())
Aij=[[float(input()) for j in range(0,N)] for i in range(0, N)]
xij = [[solver.NumVar(0,1,'X%d%d'%(i,j)) for j in range(0,N)] for i in range(0,N)]

#restricoes
for i in range(0,N):
    ct = solver.Constraint(-solver.infinity(), 1, 'ct i=%d'%(i))
    for j in range(0,N):
        ct.SetCoefficient(xij[i][j],1)

for j in range(0,N):
    ct = solver.Constraint(-solver.infinity(), 1, 'ct i=%d'%(i))
    for i in range(0,N):
        ct.SetCoefficient(xij[i][j],1)

objective = solver.Objective()
for i in range(0, N):
    for j in range(0, N):
        objective.SetCoefficient(xij[i][j], Aij[i][j])

objective.SetMaximization()

solver.Solve()

print('Solucao:')

print('Valor objetivo =',str("{:.1f}".format(objective.Value())))

for i in range(0, N):
    for j in range(0, N):
        print("X"+str(i)+str(j)+" =",str("{:.1f}".format(xij[i][j].solution_value())))
    

#for i in range(0, N):
#    print('[ ',end='')
#    for j in range(0, N):
#        print(xij[i][j].solution_value(),end=' ')
#    print(']\n',end='')

# #objective.SetMaximization()



#lb = [0,0,0,0,0,0,0,0,0]
#ub = [1,1,1,1,1,1,1,1,1]
#f = [1,1,1,1,1,1,1,1,1]
#a = [1,2,3,2,3,1,1,4,2]
#b = [18]

#solution = []
#for i in range(0, N):
#    x = solver.NumVar(lb[i],ub[i],'x'+str(i+1))
#    solution.append(x)

#cts = []
#for i in range(0, N):

#ct = solver.Constraint(-solver.infinity(),solver.infinity(),'ct')

#for i in range(0, N):
#    ct.SetCoefficient(solution[i],a[i])

#for i in range(0, N):
#    ct.SetCoefficient(solution[i],a[i])

#objective = solver.Objective()
#for i in range(0, N):
#    objective.SetCoefficient(solution[i], f[i])

#objective.SetMaximization()

#solver.Solve()

#print('Solucao:')
#print('Valor objetivo =',objective.Value())
#for i in range(0, N):
#    print(i+" =",solution[i].solution_value())
