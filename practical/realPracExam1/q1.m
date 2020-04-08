clc;
clear;
close all;

% Author : Akide Liu 
% Date : 08 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script reads in 5 numbers from the user (10 marks) storing the numbers in a vector (10 marks).  Then print the numbers in reverse order (10 marks).  Your solution must contain at least one loop.  The built-in MATLAB function flip() can NOT be used.

numVector = [];

for i = 1:5
    num = input('Enter a number:');
    numVector = [numVector num];
end

fprintf('Your numbers reversed are: ');

for i = 5:-1:1
    fprintf(' %d ', numVector(i));
end

fprintf('\n');