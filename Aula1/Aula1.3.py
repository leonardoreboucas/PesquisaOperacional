#from __future__ import print_function
from ortools.linear_solver import pywraplp


N = int(input())

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

ub=[]
for i in range(0, N):
    ub.append(float(input()))
f=[]
for i in range(0, N):
    f.append(float(input()))
a=[]
for i in range(0, N):
    a.append(float(input()))

B = float(input())
b = [B]
lb=[]
for i in range(0, N):
    lb.append(0)

solution = []
for i in range(0, N):
    x = solver.NumVar(lb[i],ub[i],'x')
    solution.append(x)

ct = solver.Constraint(-solver.infinity(),b[0],'ct')

for i in range(0, N):
    ct.SetCoefficient(solution[i],a[i])

objective = solver.Objective()
for i in range(0, N):
    objective.SetCoefficient(solution[i], f[i])

objective.SetMaximization()

solver.Solve()

print('Solucao:')
print('Valor objetivo =',str("{:.1f}".format(objective.Value())))
for i in range(0, N):
    text = 'x' + str(i+1) + ' ='
    print(text,str("{:.1f}".format(solution[i].solution_value())))