function[p1n] = neville(x, y, t)


n = length(x);

for m = 2:n
    for j = 1:(n-m+1)
        y(j) = ((t - x(j) ) * y(j+1) - (t - x(j+m-1)) * y(j)) / (x(j + m - 1) - x(j));
    end
end

p1n = y(1);

end