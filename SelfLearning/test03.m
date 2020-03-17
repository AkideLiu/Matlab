clc;
clear;

numbers = [13,64,15.8];
%           1 2 3
for i = [1:length(numbers)]
            % 1:3 = 1 2 3
    numbers = [numbers, numbers(i)];
end