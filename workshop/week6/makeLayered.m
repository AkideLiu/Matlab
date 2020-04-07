
% Author : Akide Liu 
% Date : 07 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
function [ output ] = makeLayered(input)
    A = [1];
    output = A;
    for i = 2:input
        output = surroundWith(output,i);
    end    
end