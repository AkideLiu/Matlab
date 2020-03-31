clc;
clear;
close all;

% Author : Akide Liu 
% Date : 31 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script prints the values from a vector called vals while those values are greater than zero.

% define the value array 
array = [-5:2:5];

% define a new array awaiting new elements 
dispArray = [];

% define index 
index = 1;

% while loop conditionals : elements greater than 0 and index samller than the length of array.
while index <= length(array)

    if array(index) > 0
    % append element into dispArray 
        dispArray = [dispArray array(index)];
    end
    % increasing index 
    index = index + 1;
    
end

disp(dispArray);