function demo1(f, t, fprime_at_t)

h = 2.^-(0:50);

err = zeros(5, length(h));
for i = 1:size(err, 1),
  for j = 1:size(err, 2),
    d = nd(f, t, h(j), i, i);
    if (fprime_at_t == 0)
      err(i,j) = abs(d);
    else
      err(i,j) = abs(d - fprime_at_t) / fprime_at_t;
    end
  end
end

loglog(1./h, abs(err(1,:)), 'r;l=n=1;')
hold on

xlabel '1/h'
if (fprime_at_t == 0)
  ylabel 'abs. error'
else
  ylabel 'rel. error'
end

loglog(1./h, abs(err(2,:)), 'g;l=n=2;')
loglog(1./h, abs(err(3,:)), 'b;l=n=3;')
loglog(1./h, abs(err(4,:)), 'm;l=n=4;')
loglog(1./h, abs(err(5,:)), 'c;l=n=5;')
hold off
