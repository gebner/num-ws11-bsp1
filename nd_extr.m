function d = nd_extr(f, t, h)
[D_e, D_z, D_6] = plotD(f, 0, t);
d = D_6(h);
