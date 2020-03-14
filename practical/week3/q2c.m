clc;
clear;
close all;
% this program will add the elements of B onto the end of A one element at a time in reverse order.

% initialize A ,C and B 
A = [1:10];
B = [11:20];
C = int16.empty((length(A)+length(B)),0);

% create a for loop , use B's length for times that loop travels
for i = 1:length(A)

    % get every element by index in B and A then append to C
    % A value of the form 2n, where n is a counting number (whole number), is an even number.
    % A value in the form of 2n – 1 where n is a counting number is an odd number.
    % when the index of C is odd append A's element 
    % when the index of C is even append B's element
    C(i + (i - 1)) = A(i);
    C(2 * i) = B(i);
end

% display result 
disp(num2str(C));