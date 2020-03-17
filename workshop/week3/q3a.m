clc;
clear;
close all;

A = [-2,4,9,-5,0,-1];

B = 0;

for i = 1:length(A)
    B = B + A(i);
end

result = B / length(A);
disp(result);
