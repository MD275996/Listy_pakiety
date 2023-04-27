using Plots
#jak animować
#anim = @animate for i in 1:1000
#    plot(...)
#end
#gif(anim,...)

#Krzywa budyniowa
s(x)= min(abs(x-floor(x)),abs(x-ceil(x)))
plot(s,0,5)
##
w = 6/10
T(x) = sum((w)^k*s(2^k*x) for k in 1:100)
plot( T,0,1)