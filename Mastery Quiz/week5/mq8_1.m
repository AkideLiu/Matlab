clc;
clear;
close all;

% Author : Akide Liu 
% Date : 28 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
% find the index of the first value in A divisible by 3

 A = [1,2,3,4,5];

index = 0;


for i = length(A):-1:1

    if mod(A(i),3) == 0

        index = i;

    end

end

 

if index > 0

    fprintf('The index of the first number divisible by 3 is %d\n', index);

end