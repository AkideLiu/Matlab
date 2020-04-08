clc;
clear;
close all;

% Author : Akide Liu 
% Date : 08 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script given a vector, called A, of n numbers, outputs the smallest number.  Your script must NOT use the MATLAB min function for this problem.

num = input('Enter how many numbers of vector you want generate : ');

A = randi(10,1,num);

min = A(1);

for i = 1:length(A)
    if (min > A(i))
        min = A(i);
    end
end



disp(A);

fprintf('The smallest number is: %d \n', min)
