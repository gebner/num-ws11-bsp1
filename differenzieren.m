function [p h phi] = differenzieren(f, x, h0, reps)
%DIFFERENZIEREN Summary of this function goes here
%   Detailed explanation goes here
    
    h = h0;
    phi = phi_(f, x, (h(1)));
    p = neville(h.^2, phi, 0);
    
    for i = 1:reps
        h = [h h(end)/2];
        phi = [phi phi_(f,x,(h(end)))];
        p = [p neville(h.^2, phi, 0)];
    end        
end

function[phi] = phi_(f, x, h)
    phi = (f(x + h) - f(x - h)) / (2*h);
end
