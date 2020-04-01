clc;
clear;
close all;

% Author : Akide Liu 
% Date : 30 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

for i = [1:10]
    fprintf('Loop Count : %d \n',i);
end

i = 1;
while i<=10
    fprintf('Loop Count : %d \n',i);
    i = i + 1;
end