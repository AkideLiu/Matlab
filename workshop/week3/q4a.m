clc;
clear;
close all;

A = [-2,4,9,-5,2,0,2,-1];

B = [];

for i = 1:length(A);
    B = [B -A(i)];
end
disp(B);