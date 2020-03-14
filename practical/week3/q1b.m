clc;
clear;
close all;

% this program will create a new vector C that contains the 2 raised to the power of the numbers in A.
% Notice : configure line 24 and 35 can affect outputs,
%          configure line 13 can change range of VECTOR A (initial VECTOR);

% define Vector A
% A = [-10:0.5:10];

% test case [-100 - 100]
A = [-100:0.5:100];


% create empty vector B , as the same length of vector A
B = zeros(size(A));

for i = [1:length(A)]
    B(i) = power(A(i), 3);
end

C = zeros(size(A));

for i = 1:length(A)
    C(i) = pow2(A(i));
end

% enable following to display context of vector C :
% disp(num2str(C));

% call following function to generate result. 
% if not required , disable following function !

resultGenerater(A,C);



