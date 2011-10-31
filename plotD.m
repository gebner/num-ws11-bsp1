function [ D_e, D_z, D_6 ] = plotD( f, fderiv, t)
%PLOTD Summary of this function goes here
%   Detailed explanation goes here

D_e = @(h) (f(t+h)-f(t))./(h);
D_z = @(h) (f(t+h)-f(t-h))./(2*h);
D_6 = @(h) 1/45 .* (D_z(h) - 20 * D_z(h/2) + 64 * D_z(h/4));

%x = 2.^-(0:60);
%y1 = abs((D_e(x) - fderiv(t))/fderiv(t));
%y2 = abs((D_z(x) - fderiv(t))/fderiv(t));
%y3 = abs((D_6(x) - fderiv(t))/fderiv(t));
%
%loglog(x, y1, 'blue');
%hold on
%xlabel 'h'
%ylabel 'relativer Fehler'
%loglog(x, y2, 'red');
%loglog(x, y3, 'green');
%legend('D_e', 'D_z', 'D_{extr}');
%hold off
%
%end
%
