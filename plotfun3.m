function plotfun3(f, t, fprime_at_t, fn)
demo11(@(h) nd(f, t, h, 1,1), fprime_at_t, 'r;l=n=1;')
hold on
demo11(@(h) nd_z(f, t, h), fprime_at_t, 'g;D_{z};')
hold off
print(fn, "-tight", "-color", "-S500,300")
