function demo

%figure(1); demo1(@sin, pi/4, cos(pi/4)); title 'sin(x) at pi/4'
figure(1); demo1(inline('4*x+3'), 1, 4); title '4x+3 at x=1'
figure(2); demo1(@exp, 2, exp(2)); title 'e^x at x=2'
figure(3); demo1(@cos, 0, 0); title 'cos(x) at x=0'
figure(1)
