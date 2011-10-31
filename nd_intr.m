function d = nd_intr(f, t, h, n)
[p, foo, bar] = differenzieren(f, t, h, n);
d = p(end);
