#from __future__ import print_function
from ortools.linear_solver import pywraplp

solver = pywraplp.Solver('simple_lp_program', pywraplp.Solver.GLOP_LINEAR_PROGRAMMING)

def print_solution(matrix, size):
    for x in range(size[0]):
        for y in range(size[1]):
            print(matrix[x][y].solution_value()," ", end="")
        print("")


def solve(N, T, L, LMAX, CMAX, K, X):
    solver = pywraplp.Solver("MixedLinearProgramming",pywraplp.Solver.CBC_MIXED_INTEGER_PROGRAMMING)

    Y = [[0 for x in range(N)] for y in range(T)]
    for t in range(0, T):
        for n in range(0,N):
            Y[t][n] = solver.IntVar(0, X[t][n], "Y[%i][%i]" % (t,n))

    Z = [[[0 for x in range(0, N)] for y in range(0, N)] for z in range(0, T)]
    for t in range(0, T):
        for n in range(0, N):
            for k in range(0, N):
                Z[t][n][k] = solver.BoolVar("Z[%i][%i][%i]" % (t, n, k))
    
    head = 0

    for t in range(0, T):
        for n in range(0, N):
            for k in range (0, N):
                const = solver.Constraint(0, LMAX, str(head))
                const.SetCoefficient(Z[t][n][k],L[n][k])
                head = head + 1

    for t in range(0, T):
        for n in range(0, N):
            const = solver.Constraint(X[t][n], X[t][n], str(head))   
            for k in range (0, N):
                const.SetCoefficient(Z[t][n][k],1)
            head = head + 1
    
    for t in range(0, T):
        for n in range(0, N):
            for k in range(0, N):
                if n !=k:
                    const = solver.Constraint(0,1, str(head))
                else:
                    const = solver.Constraint(0,0, str(head))
                const.SetCoefficient(Y[t][n],1)
                const.SetCoefficient(Z[t][n][k],-1)
                head = head + 1

    for t in range(0, T):
        for n in range(0, N):
            const = solver.Constraint(0,CMAX, str(head))
            for k in range(0, N):
                const.SetCoefficient(Z[t][n][k],K[n])
            head = head + 1

    for n in range(0, N):
        for t in range(T-2, -1, -1):
            const = solver.Constraint(-1, 0, str(head))
            const.SetCoefficient(Y[t][n],1)
            const.SetCoefficient(Y[t+1][n],-1)
            head = head + 1
    
    objective = solver.Objective()
    for t in range(0, T):
        for n in range(0, N):
            objective.SetCoefficient(Y[t][n],1)
    objective.SetMinimization()

    solver.Solve()

    KK = [[0 for x in range(0, N)] for z in range(0, T)]

    print("Solucao:")
    print("Localizacao dos controladores:")
    print_solution(Y,[T,N])
    print("Associacao switch-controlador:")
    for t in range(0, T):
        print ("Periodo",str(t+1))
        for n in range (0, N):
            if Y[t][n].solution_value() == 1:
                print("Controlador: [",str(n),"]")
                for k in range(0, N):
                    if Z[t][n][k].solution_value() == 1:
                        KK[t][n] += K[n]
                        if n != k:
                            print("Z[",str(k),"] Latencia =",L[n][k])
                        else:    
                            print("Z[",str(k),"] Latencia = 0")
        print("")
    
    print("Carga do controlador:")
    for t in range(0, T):
        for n in range (0, N):
            if Y[t][n].solution_value() == 1:
                print("periodo "+ str(t+1) +" controlador "+ str(n) +" =", str("{:.1f}".format(KK[t][n],1)))
                        
            
#Parametros

N = int(input()) #Qtde de Nodos
T = int(input()) #Passos Temporais
LMAX = int(input()) #Max Latência
CMAX = int(input()) #Max Carga
X=[[int(input()) for n in range(0,N)] for t in range(0, T)] #Matriz de Atualização
L=[[int(input()) for n in range(0,N)] for t in range(0, T)] #Matriz de latência
K=[int(input()) for n in range(0,N)] #Vetor de CargasN



#print(N)

#print(T)

#print(LMAX)

#print(CMAX)
#print(X)
#print(L)
#print(K)

solve(N, T, L, LMAX, CMAX, K, X)        
                    

4
4
20
200
0
0
0
1
1
0
0
1
1
0
1
1
1
1
1
1
0
2
7
30
2
0
4
30
7
4
0
20
30
30
20
0
150
53
50
53








6
4
20
200
0
0
1
0
0
0
1
0
1
0
1
0
1
1
1
0
1
0
1
1
1
1
1
1
0
11
10
18
11
17
11
0
28
11
2
28
10
28
0
26
23
21
18
11
26
0
22
25
11
2
23
22
0
6
17
28
21
25
6
0
84
115
138
146
141
147