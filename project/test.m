clc;
clear;
close all;

% Author : Akide Liu 
% Date : 13 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

A = zeros(3);
B = [1 0 1;0 1 0 ; 1 1 0];

C = (find(A~=B))

[row,col] = ind2sub(size(A),C)

length(C)
B(7)


D = [[1 ; 2] [3 ; 4]]

D = [D [3 ; 4]]

