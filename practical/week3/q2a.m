clc;
clear;
close all;
% this program will add the elements of B onto the end of A one element at a time.

% initialize A and B
A = [1:10];
B = [11:20];
% get A's initial length 
lengthA = length(A);

% create a for loop , use B's length for times that loop travels
for i = 1:length(B)
    % get every element by index in B and append to A
    A(lengthA + i) = B(i);
end

% display result 
disp(num2str(A));