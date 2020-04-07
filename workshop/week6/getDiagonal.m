

% Author : Akide Liu 
% Date : 07 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

function [ output ] = getDiagonal(vector)


    [rows, cols] = size(vector);

    output = [];

    for row = 1:rows
        for col = 1:cols
            if (row == col)
                output = [output vector(row,col)];
            end
        end
    end
end