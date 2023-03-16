using Plots

function wykladniczy(n₀, r, t)
    n = zeros(t)
    n[1] = (1+r)n₀
    for d = 2:t
        n[d] = (1+r)n[d-1]
    end
    return n
end

function logistyczny(n₀, r, L, t)
    n = zeros(t)
    n[1] = n₀ + r*n₀*(1 - n₀/L)
    for d in 2:t
        n[d] = n[d-1] + r*n[d-1]*(1 - n[d-1]/L)
    end
    return n
end



function rickera(n₀,r, L, t)
    a = (1+r)^(-1)
    b = (1-a)/L

    n = zeros(t)
    n[1] = n₀/(a+b*n₀)
    for d in 2:t
        n[d] = n[d-1]/(a+b*n[d-1])
    end
    return n
end

##

scatter(wykladniczy(1,-0.5,15))

##

scatter(logistyczny(6,1.7,4,10))

##

scatter(rickera(1,1.8,4,10))

