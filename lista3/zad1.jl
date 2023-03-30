using Plots
an = @animate for k in 1:10
heatmap(rand((0, 1),10,10),
aspect_ratio = 1,
seriescolor = palette([:blue,:yellow]),
colorbar = :none,
framestyle = :none
)
end
gif(an,"mojaAnimacja.gif", fps = 2)

function dywergent(fun,dx)
    xs = -5:dx:5
    ys = xs