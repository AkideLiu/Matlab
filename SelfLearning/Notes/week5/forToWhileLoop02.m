clc;
clear;
close all;

% Author : Akide Liu 
% Date : 30 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

A = [ 6 4 8 7 3];
index = 0;

for i = length(A):-1:1
    if mod(A(i), 3) == 0
        index = i;
    end
end

fprintf('The index of the first number divisible by 3 is %d \n', index);


index = 0;
i = length(A);
while i >= 1
    if mod(A(i), 3) == 0
        index = i;
    end
    i = i - 1;
end

fprintf('The index of the first number divisible by 3 is %d \n', index);

