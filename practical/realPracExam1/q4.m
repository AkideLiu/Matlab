clc;
clear;
close all;

% Author : Akide Liu 
% Date : 08 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script read the dimensions of the matrix from the user and prompt the user for the data needed to fill the array;

% request input 
reqRows = input('How many rows?: ');
reqCols = input('How many columns?: ');

A = zeros(reqRows,reqCols);

[rows,cols] = size(A);

for row = 1:rows
    for col = 1:cols
        fprintf('Enter the values for row %d, column %d: ',row,col)
        A(row,col) = input('');
    end
end

fprintf('\n');

% disp(A);

% display even rows 
for row = 1:rows
    for col = 1:cols
        check = Mymod(row);
        if (check == 1)
            fprintf(' %d ', A(row,col));
        end
    end

    check = Mymod(row);
    if (check == 1)
        fprintf('\n');
    end
end


fprintf('\n');


% sum the elements of the even rows instead of printing them. The MATLAB function sum() must not be used in your solution (15 marks)

totalSum = 0;

for row = 1:rows
    for col = 1:cols
        check = Mymod(row);
        if (check == 1)
            totalSum = totalSum + A(row,col);
        end
    end
end

fprintf('The sum of all the elements of the even rows is: %d \n', totalSum);

function output = Mymod(row)
    if (mod(row, 2) == 0)
        output = 1;
    else
        output = 0;
    end
end