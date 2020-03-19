clc;
clear;
close all;

% Author : Akide Liu 
% Date : 19 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script that prints the number of even values contained in each row of a 2D array

A = [1 2 3; 4 5 6 ; 7 8 9];

[rows cols] = size(A);

for r = 1:rows

    count = 0;

    for c = 1:cols

        if(mod(A(r,c), 2)==0)
            
            count = count +1;

        end %if

    end %inner loop

    fprintf('Row %d contains %d even numbers\n', r, count);  

end %outer loop

 








  




