clc;
clear;
close all;

% Author : Akide Liu 
% Date : 31 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
% read in ages and names
% set up result vectors
% define a vector
A=[ 1 5 5 7 3 2 9 10 ];

% set the first index
i=1;

% print the first element of the vector and increment index
fprintf('%0.0f ',A(i));
i=i+1;

% while we haven't reached end and we are ascending 
for i=[2:length(A)]
    if (A(i)<A(i-1))  % we have started to descend
        break;        % exit the loop
    end
    fprintf('%0.0f ',A(i));  % print current elements
end

fprintf('\n');               % print newline