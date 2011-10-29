function demo11(f, t, fprime_at_t, l, n, plotopts)

h = 2.^-(0:40);

err = zeros(size(h));
for j = 1:length(err),
  d = nd(f, t, h(j), l, n);
  if (fprime_at_t == 0)
    err(j) = abs(d);
  else
    err(j) = abs((d - fprime_at_t) / fprime_at_t);
  end
end

semilogy(-log2(h), abs(err(1,:)), plotopts)

xlabel '-log2(h)'
if (fprime_at_t == 0)
  ylabel 'abs. error'
else
  ylabel 'rel. error'
end
