clc;
clear;
close all;

% Author : Akide Liu 
% Date : 31 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script converting a Number to Text using a Switch Statement

num = randi([0 2]);

switch num
    case 0
        disp('Rock');
    case 1
        disp('Paper');
    case 2
        disp('Scissors');
end