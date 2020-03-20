clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script calculate the running sums

% define the vector A

A = [ 5 4 7 9 8];

% initialize B and sum 
B = []; %start with B as empty
sum =0;

% loop over all elemetns of A
for i = 1:length(A)
    % add to sum
    sum = sum + A(i);

    % add to B
    B = [B sum]; 
end

%display result  
disp(B);

