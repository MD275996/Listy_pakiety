function markow_chain(wektor,Macierz,krok)
    return wektor *(Macierz^krok)
end
π = [1 0]


##

α = 0.3
β = 0.5
P = [1-α α; β 1-β]

##
π = [1 0 1 0]
v = 0.4
Q = [ xi==yi ? 1/4+ 3/4*ℯ^((-4*v)/3) : 1/4 - 1/4*ℯ^((-4*v)/3) for xi in 1:4, yi in 1:4]

markow_chain(π,Q,100)

