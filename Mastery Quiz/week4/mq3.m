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

A(1,:) = [A(1,:),x];


% output : 

% Unable to perform assignment because the size of the left side is 1-by-3 and the size of the right side is
% 1-by-4.

% Error in mq3 (line 16)
% A(1,:) = [A(1,:),x];

% Error in run (line 91)
% evalin('caller', strcat(script, ';'));