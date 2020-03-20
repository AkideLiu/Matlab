clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script defines a vector A  and create a new vector B containing the elements of A shifted one index to the right.

% define vector A;
% A = [ 5 3 8 ];
A = [ 1 2 3 4 ];

% initialization of vector B, as the same length as A;
B = zeros(size(A));

% set the completion number 
shiftTo = 0;

% loop - progress all elements in vector A;
% i refers the index of vecotr B
% in following conditional, 
% if the element's index equals to 1, then change it to completion number 
% if the element's index NOT equals to 1, then set the element's value as previous index element from vecotr A to perform right shifting.

for i = 1:length(B)
    if i == 1
        B(i) = shiftTo;
    else
        B(i) = A(i - 1); 
    end
end

% display output.
disp(B);