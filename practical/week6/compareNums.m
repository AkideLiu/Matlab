% Author : Akide Liu 
% Date : 24 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script called compareNums that takes two numbers x and y as its parameters and returns two numbers: big and small where big is the larger of x and y and small is the smaller of x and y.  


function [small big] = compareNums(x,y);

    % if x bigger or equals to y, then x is bigger number and  y is smaller number 
    % if x smaller then y, the x is the smaller number and y is bigger number .
    % then return small and big 
    if x >= y
        small = y;
        big = x;
    else
        small = x;
        big = y;
    end
    
end