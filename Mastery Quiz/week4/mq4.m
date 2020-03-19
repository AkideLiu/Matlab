clc;
clear;
close all;

% Author : Akide Liu 
% Date : 20 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script that Given an existing 2D array, A, we want to add a value, x,  to the first row;

A = [1 2 3; 4 5 6 ; 7 8 9];

x = 666;

A(1,length(A)+1) = x;

disp(num2str(A));

% output : 

% 1    2    3  666
% 4    5    6    0
% 7    8    9    0