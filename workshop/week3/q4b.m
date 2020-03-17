clc;
clear;
close all;

A = [-2 4 9 -5 0 -1];

product = 1;

for i = 1:length(A)
    product = product * A(i);
end

disp(product);