clc;
clear;
close all;

% Author : Akide Liu 
% Date : 03 / 05 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

M = [ 1 2 3 ...
    ; 4 5 6 ...
    ; 7 8 9];

[rows, cols] = size(M);

% look at each row
for r = 1:rows
   
   % look at all the columns in this row
   for c = 1:cols

     if (r == c - 1)
          disp(M(r,c));
     end
   end
end