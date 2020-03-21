clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script defines a vector A and create a new vector B containing the elements of A shifted one index to the left. The last element of B should be the previous first element of A. Thus A and B will be of the same length.


% define vector A;
% A = [ 5 3 8 ];
A = [ 1 2 3 4 ];

% initialization of vector B, as the same length as A;
B = zeros(size(A));

% set the completion number (first element in vector A)
shiftTo = A(1);

% define length of B
lenB = length(B);

% loop - progress all elements in vector A;
% i refers the index of vecotr B
% in following conditional, 
% if the element's index equals to length of B, then change it to completion number 
% if the element's index NOT equals to length of B, then set the element's value as next index element from vecotr A to perform right shifting.

for i = 1:lenB
    if i == lenB
        B(i) = shiftTo;
        
    % following expression ignores the case when i equals to length of B, because when i equls length of B, i + 1 would out of index of vecotr A.
    elseif i < lenB
        B(i) = A(i + 1);
    end
end

% display output.
% disp(B);

resultGenerater(A,B);
