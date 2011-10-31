function plotfun(f, t, fprime_at_t, fn, match)
if (match)
  te = 2^2; ti = 2^5;
else
  te = 1; ti = 1;
end
demo11(@(h) nd_extr(f, t, h*te), fprime_at_t, 'g;D_{extr};')
hold on
demo11(@(h) nd_intr(f, t, h*ti, 5), fprime_at_t, 'r;D_{intr};')
demo11(@(h) nd(f, t, h, 3,3), fprime_at_t, 'b;l=n=3;')
hold off
print(fn, "-tight", "-color", "-S500,300")
