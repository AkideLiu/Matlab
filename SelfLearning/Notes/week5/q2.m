clc;
clear;
close all;

% Author : Akide Liu 
% Date : 30 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

A = [1 2 3 4 5];

% first element gets printed by default ***Design decision*
fprintf('%d ', A(1));

% two conditions : 1. we haven't run out elements 2
%                  2. the element is greater or equal to the previous element

index = 2;
while (index <= length(A) && A(index-1) < A(index))
    fprintf('%d ', A(index));
    index = index + 1;
end