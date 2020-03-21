clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script is calculating a 2D array of the element distances


% define vector A;
A = [ 7 5 8 ];
% A = [ 1 2 3 4 ];

% define length of B
lenA = length(A);

% initialization of 2D vector B have the same numbers of row and column which as same as vector A's length;
B = zeros(lenA,lenA);

% outer loop - operate every rows 
for i = 1:lenA
    % inner loop - operate every columns 
    for j = 1:lenA
        B(i,j) = abs(A(i)-A(j));
    end
end

% display output.
% disp(B);

resultGenerater(A,B);
