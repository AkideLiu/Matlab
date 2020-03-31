clc;
clear;
close all;

% Author : Akide Liu 
% Date : 31 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script detecting an Isosceles Triangle

A = [];

for i = 1:3
    fprintf('Enter %d side', i)
    ele = input(' : ');
    A = [A ele];
end


if A(1) == A(2) && A(1) == A(3)

elseif A(1) == A(end) || A(1) == A(2) || A(2) == A(3)
    disp('it’s isosceles')
end