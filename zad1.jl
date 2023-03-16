g(x) = ℯ^-x + ℯ^(-2x) -1

function odwracanie(f, a, b, y, d)
    for x = a:d:b 
        if f(x)>= y
            print(x)
            break
        end
    end
end
    


odwracanie(g,0,10,1,0.001)
