clc;
clear;
close all;

% Author : Akide Liu 
% Date : 02 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

A = [5,4,6,7,3];
for i = 1:length(A)
    if mod(A(i), 3) == 0
        fprintf('The index first number divisible by 3 is: %d \n',i);
        break;
    end
end