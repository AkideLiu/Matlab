clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script defines a vector A and create a new vector B where each element of B is a sum of the corresponding element of A and its neighbouring elements.  

% As special cases the first element of B is the sum of the first two elements of A and the last element of B is the sum of the last two elements of A. 

% A and B will have the same length. 

% A has at least two elements.

% define vector A;
% A = [ 5 3 8 ];
A = [ 1 2 3 4 ];

% initialization of vector B, as the same length as A;
B = zeros(size(A));

% define length of B
lenB = length(B);


% loop - progress all elements in vector A;
% i refers the index of vecotr B
% in following conditional, 
% if i equals to  1 as known as that the first element in the vector B, that element could be the sum of same index element and next index element in vector A.
% if i equals to  the length of vecotr B as known as last element in the vector B, that element coud be the sum of same index element and previous element in vector A.
% if i NOT equals to the first or last element in the vector B, that element could be the sum of the previous index element plus  same index element plus next index element in vector A.

for i = 1:lenB
    if i == 1

        B(i) = (A(i) + A(i + 1));

    elseif i == lenB

        B(i) = (A(i - 1) + A(i));
    
    elseif i ~= 1 && i ~= lenB

        B(i) = (A(i - 1) + A(i) + A(i + 1));

    end
end

% display output.
% disp(B);

resultGenerater(A,B);
