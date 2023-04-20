using LinearAlgebra
#a 

A = [ 1/(i+j-1) for i in (1:100), j in (1:100)]
x = [1 for i in (1:100)]

y = A*x
x0 = A\y

x - x0

##

x = ones(500)
A = rand((1:100), 500, 500)

y = A*x
x0 = A\y
x-x0