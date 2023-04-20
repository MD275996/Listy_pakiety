#znajdowanie optymalnej trasy
using LinearAlgebra

teren = [10 10 10 1 10 10 10;
         10 10 10 10 1 10 10;
         10 10 10 1 10 10 10;
         10 10 1 10 10 10 10;
         10 10 10 1 10 10 10]

LinearAlgebra.size(teren)
##

function szukanie_trasy(A)
    position_k = (size(A)[2]/2)
    position_w = size(A)[1]
    krok = min(A[position_w-1,position_k-1],A[position_w-1,position_k+1])
    #ustawiamy pionka na środku ostatniego wiersza, dla zasady
end
szukanie_trasy(teren)
##