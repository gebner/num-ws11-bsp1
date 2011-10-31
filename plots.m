function plots
plotfun_meta(@exp, 1, exp(1), "exp")
plotfun_meta(@(x) 10^-10*sin(10^10*x), 1, cos(10^10), "scaledsin")
plotfun_meta(@(x) x/10 + 5, 1, 1/10, "lin")
plotfun_meta(@(x) 5*x.^3 + x.^2/10 + 7, 1, 15.2, "poly3")
plotfun_meta(@(x) x.^6 + x.^5 + x.^4 + x.^3 + x.^2 + x.^1 + 1, 2, 321, "poly6")
plotfun_meta(@(x) 1./x, 1, -1, "recip")
