function e = relerr(a, b)
if (b == 0)
  e = abs(a);
else
  e = abs((b - a) / a);
end
