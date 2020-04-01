clc;
clear;
close all;

% Author : Akide Liu 
% Date : 01 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

A = [ 5, 4, 6, 7, 3 ; 1, 2, 3, 4, 5 ; 5, 6, 4, 2, 4 ; 4, 5, 3, 2, 1];
A = randi(10,5);

[rows,cols] = size(A);

B = string(A);
for i = 1:rows
    for j = 1:cols
        if (i ~= 1 && j ~= 1) && (i ~= rows && j ~= cols)
            A(i,j) = "";        
        end    
    end
end
disp(A);





% if (~strcmp(i, "1") && ~strcmp(j, "1")) && (~strcmp(i, rows) && ~strcmp(i, cols))
%     B(i,j) = ''; 
% end