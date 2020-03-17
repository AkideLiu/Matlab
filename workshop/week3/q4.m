clc;
clear;
close all;

% define vector A
A = [-2 4 9 -5 0 -1];

% produce a new vector B that contains the squares of A

% start with empty B;
B = []; 

% loop over A and build up B

for i = 1:length(A)
    B = [B A(i)*A(i)];
end

% display B
disp(B);