clc;
clear;
close all;

% Author : Akide Liu 
% Date : 24 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script test for minMaxVectors

% input1    input 2    min    max
% [ 1 2 ]   [ 3 4 ]    1      4
% [ 5 ]     [ -5 ]     -5     5
% [ 1 9 ]   [ 5 6 ]    1      9


% case 1
v1 = [1 2];
v2 = [3 4];

[min max] = minMaxVectors(v1,v2)

% case 2
clear;
v1 = [5];
v2 = [-5];

[min max] = minMaxVectors(v1,v2)


% case 3
clear;
v1 = [1 9];
v2 = [5 6];

[min max] = minMaxVectors(v1,v2)

% own cases:

clear;
v1 = [6 10];
v2 = [8 9];

[min max] = minMaxVectors(v1,v2)


clear;
v1 = [1 -6];
v2 = [9 -2];

[min max] = minMaxVectors(v1,v2)

clear;
v1 = [1 -6 15];
v2 = [9 -2 -21];

[min max] = minMaxVectors(v1,v2)