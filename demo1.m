function demo1(f, t, fprime_at_t)

demo11(@(h) nd(f, t, h, 1,1), fprime_at_t, 'r;l=n=1;')
hold on

demo11(@(h) nd(f, t, h, 2,2), fprime_at_t, 'g;l=n=2;')
demo11(@(h) nd(f, t, h, 3,3), fprime_at_t, 'b;l=n=3;')
demo11(@(h) nd(f, t, h, 4,4), fprime_at_t, 'm;l=n=4;')
demo11(@(h) nd(f, t, h, 5,6), fprime_at_t, 'c;l=n=5;')
hold off
