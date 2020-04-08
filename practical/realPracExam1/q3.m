clc;
clear;
close all;

% Author : Akide Liu 
% Date : 08 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script Given a 2D array, called A, of size n x m, write a script that will print out the even rows of A, using nested loops.  MATLAB matrix shortcuts can not be used for this problem (ie A(x,:) can not be used to get an entire row)

A = randi(9,randi([2,10]),randi([2,10]));

disp(A);

[rows,cols] = size(A);

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


function output = Mymod(row)
    if (mod(row, 2) == 0)
        output = 1;
    else
        output = 0;
    end
end