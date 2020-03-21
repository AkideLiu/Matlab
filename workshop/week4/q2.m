clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script calculate the sum of distances from each element to 
% every other element.


% define A
A = [1 3 5];

% initialization 
% start with empty B
B = []; 
% record length of A
lenA = length(A);

% outer loop  - to add each distance sum to B
for i = [1:lenA]
    % initialize sum of distances
    sumDist = 0;
    % inner loop - sum differences of elements from current element .
    for j = [1:lenA]
        % add distance from current element A(i) to other element A(j) to sum 
        sumDist = sumDist + abs(A(i)-A(j));
    end
    % append sumDist to the result 
    B = [B sumDist];
end

% display results
% disp(B);

resultGenerater(A,B);
