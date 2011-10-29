function plots
plotfun(@exp, 2, exp(2), "fig_exp.eps")
plotfun(inline('10^(-5)*sin(10^5*x)'), 1, cos(10^5), "fig_scaledsin.eps")
