clc; clear; close all;



syms x;
disp(solve(2*x*sech(x^2)^2,x));

x = linspace(-5, 5);
y = 2.*x.*power(sech(power(x, 2)),2);
y1 = tanh(power(x, 2)) -1;
plot(x,y1,x,y);
grid on;
grid minor
