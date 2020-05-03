clc;
clear;
close all;

% Author : Akide Liu 
% Date : 03 / 05 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
M = zeros([6,6]);

[rows, cols] = size(M)

% find the value to print
for r = 1:rows
   
    % select the column to print
    c = cols - r + 1;
    fprintf('%d', M(r,c));
end