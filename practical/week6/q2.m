clc;
clear;
close all;

% Author : Akide Liu 
% Date : 06 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

function total = sum(vector)

    % returns the sum of a vector's elements
   
      
   
       total = 0;
   
    
   
       for i = 1:length(vector)
   
           total = total+vector(i);
   
       end
   
    
   
   end