clc;
clear;
close all;

% Author : Akide Liu 
% Date : 02 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

A = zeros(3,3);
[rows,cols] = size(A);

for row = 1:rows
    for col = 1:cols
        fprintf('Enter the values for row %d, column %d : ',row,col);
        num = input('');
        A(row,col) = num;
    end
end

% disp(A);

for row = 1:rows
    for col = 1:cols
        if (row == 2 && col == 2)
            fprintf('   ');
        else
            fprintf(' %d ', A(row,col));    
        end
    end
    fprintf('\n');
end

count = 0;
for row = 1:rows
    for col = 1:cols
        if mod(A(row,col),2) ~= 0
            count = count + 1;
        end
    end
end

fprintf('There are %d odd values in the fence. \n',count);