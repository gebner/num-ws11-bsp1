function demo11(d, fprime_at_t, plotopts)

h = 2.^-(0:60);

err = zeros(size(h));
for j = 1:length(err),
  err(j) = relerr(d(h(j)), fprime_at_t);
end

semilogy(-log2(h), err, plotopts)

xlabel '-log2(h)'
if (fprime_at_t == 0)
  ylabel 'abs. error'
else
  ylabel 'rel. error'
end
