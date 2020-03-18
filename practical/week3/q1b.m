clc;
clear;
close all;

% this program will create a new vector C that contains the 2 raised to the power of the numbers in A.
%          configure line 13 can change range of VECTOR A (initial VECTOR);

% define Vector A
% A = [-10:0.5:10];

% test case [-100 - 100]
A = [-100:0.5:100];


% create empty vector B , as the same length of vector A
B = zeros(1,length(A));

% use a loop put every elements' cubes from Vector A into  Vector B
for i = [1:length(A)]
    % power function refer how many times pwoer of first argument.
    B(i) = power(A(i), 3);
end %end for

% create empty vector C , as the same length of vector A
C = zeros(size(A));

% use a loop put every elements' 2 power from Vector A into  Vector B
for i = 1:length(A)
    % pow2 function refer 2 times power of argument
    C(i) = pow2(A(i));
end %end for

% enable following to display context of vector C :
% disp(num2str(C));

% call following function to generate result. 
% if not required , disable following function !

q1ResultGenerater(A,C);



