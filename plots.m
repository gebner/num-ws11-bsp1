function plots

plotfun(@exp, 1, exp(1), "fig_exp.eps")
plotfun(@(x) 10^-10*sin(10^10*x), 1, cos(10^10), "fig_scaledsin.eps")
plotfun(@(x) x/10 + 5, 1, 1/10, "fig_lin.eps")
plotfun(@(x) 5*x.^3 + x.^2/10 + 7, 1, 15.2, "fig_poly3.eps")
plotfun(@(x) x.^6 + x.^5 + x.^4 + x.^3 + x.^2 + x.^1 + 1, 2, 321, "fig_poly6.eps")
