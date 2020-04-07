

% Author : Akide Liu 
% Date : 07 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

function [ output ] = surroundWith(A,num)
    mysize = size(A);

    output = num * ones(mysize + 2);
    output(2:end-1,2:end-1) = A;

end