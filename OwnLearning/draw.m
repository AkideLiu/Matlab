clc; clear; close all;
% syms x;
% syms f(x);
% y = tanh(power(x, 2)) -1;
% dif = diff(f,x);
% disp(dif);
% plot(x,dif);

% f = 2*x*x^2;
% plot(x,f);

x = linspace(-10, 10);
y = 2.*x.*power(sech(power(x, 2)),2);
y1 = tanh(power(x, 2)) -1;
plot(x,y1,x,y);