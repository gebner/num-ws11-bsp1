function d = nd(f, t, h, l, n)
x = h*(-l:n);
y = f(t+x) - f(t);
P = polyfit(x, y, length(x)-1);
d = P(end-1);
