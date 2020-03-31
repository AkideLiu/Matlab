clc;
clear;
close all;

% Author : Akide Liu 
% Date : 31 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script In this question we define code that reads in three positive numbers representing the lengths of the sides of a triangle and prints out a message saying “it’s equilateral” if all three sides are of equal length.

A = [ 6 6 6 ];

index = 1;

Aflag = true;

while index < length(A)
    if A(index) == A(index + 1) 
        Aflag = false;
        break;
    end
    index = index + 1;
end

if Aflag == false
    disp('“it’s equilateral”')
end
