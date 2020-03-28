clc;
clear;
close all;

% Author : Akide Liu 
% Date : 28 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
% Which of the following is equivalent to ~ ( n > 1 && n < 100 )

n = 10;

fprintf('~ ( n > 1 && n < 100 ) %d \n', ~ ( n > 1 && n < 100 ));

fprintf('n > 1 && n < 100 %d \n', n > 1 && n < 100);
fprintf('n > 1 || n < 100 %d \n', n > 1 || n < 100);
fprintf('~ n > 1 && ~ n < 100 %d \n', (~ n > 1 && ~ n < 100));
fprintf('~ n > 1 || ~ n < 100 %d \n', (~ n > 1 || ~ n < 100));


