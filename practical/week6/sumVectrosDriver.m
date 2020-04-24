clc;
clear;
close all;

% Author : Akide Liu 
% Date : 24 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script test for sumVectors;

% input1     input 2    output
% [ 1 2 ]    [ 3 4 ]    10
% [ 5 5 ]    [ -5 -5 ]  0
% [ 3 4 1 ]  [ 2 6 4 ]  20


% case 1
v1 = [1 2];
v2 = [3 4];

sum = sumVectors(v1,v2)

% case 2
v1 = [5 5];
v2 = [-5 -5];

sum = sumVectors(v1,v2)

% case 1
v1 = [3 4 1];
v2 = [2 6 4];

sum = sumVectors(v1,v2)

% own cases:

clear;
v1 = [6 10];
v2 = [8 9];

sum = sumVectors(v1,v2)

clear;
v1 = [1 -6];
v2 = [9 -2];
sum = sumVectors(v1,v2)

clear;
v1 = [1 -6 15];
v2 = [9 -2 -21];
sum = sumVectors(v1,v2)

