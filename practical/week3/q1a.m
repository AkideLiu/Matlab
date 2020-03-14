clc;
clear;
close all;

% this program will create a new vector B that contains the cubes of the numbers in A.
% Notice : configure line 24 and 29 can affect outputs,
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

% enable following to display context of vector B :
% disp(num2str(B));

% call following function to generate result. 
% if not required , disable following function !

resultGenerater(A,B);