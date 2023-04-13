using LinearAlgebra
A = rand((1:2),5,5)
e = eigen(A)
Y = Diagonal(e.values)
V = e.vectors

display(eᴬ = V * ℯ.^Y * 1/V)
exp(A)