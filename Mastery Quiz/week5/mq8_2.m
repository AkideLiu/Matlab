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


 i=1;

 

 while mod(A(i),3) ~= 0 && i <= length(A)

    i = i+1;

end

 

if i <= length(A)

    fprintf('The index of the first number divisible by 3 is %d\n', i);

end


