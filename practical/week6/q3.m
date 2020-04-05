clc;
clear;
close all;

% Author : Akide Liu 
% Date : 06 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

number = 5;

pow(number, 2);

disp(number);

 

function pow(number, exp) 

    for i = 2:exp

        number = number * number;

    end

end