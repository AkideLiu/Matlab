clc;
clear;
close all;

% Author : Akide Liu 
% Date : 01 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

% A = [ 5, 4, 6, 7, 3 ; 1, 2, 3, 4, 5 ; 5, 6, 4, 2, 4 ; 4, 5, 3, 2, 1];
A = randi(9,randi(10));
[rows,cols] = size(A);

num2str(A);
A;
for i = 1:rows
    for j = 1:cols
        if i ~= 1 && i ~= rows
            if j == 1
                fprintf(' %d ' ,A(i,j));
            elseif j ~= 1 && j ~= cols
                fprintf('   ');
%                   A(i,j) = blanks(5);
            elseif j == cols
                fprintf(' %d ' ,A(i,j));
            end
        else
            
            fprintf(' %d ' ,A(i,j));
        end
    end
    fprintf('\n');
end

