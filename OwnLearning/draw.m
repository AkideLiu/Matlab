clc; clear; close all;

% x = linspace(-10, 10);
% y = 2.*x.*power(sech(power(x, 2)),2);
% y1 = tanh(power(x, 2)) -1;
% plot(x,y1,x,y);

syms x a;
solve(2*x*sech(x^2)^2,x)