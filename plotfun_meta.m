function plotfun_meta(f, t, fprime_at_t, basename)
plotfun(f, t, fprime_at_t, strcat('fig_', basename, '.eps'), 1)
plotfun(f, t, fprime_at_t, strcat('fig_', basename, '_noscale.eps'), 0)
plotfun2(f, t, fprime_at_t, strcat('fig_', basename, '_internal.eps'))
plotfun3(f, t, fprime_at_t, strcat('fig_', basename, '_central.eps'))