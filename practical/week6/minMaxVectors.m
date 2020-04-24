
% Author : Akide Liu 
% Date : 24 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script called minMaxVectors that takes two vectors v1 and v2 (you can assume these vectors have the same length) as its parameters and returns two values: the minimum of both of these vectors, and the maximum of both of these vectors. You must also write a driver file called minMaxVectorsDriver to test your program. 

function [minR maxR] = minMaxVectors(v1,v2)
     % definition of a new vector called sumVector and it combines vector v1 and v2 together .   
    sumVector = [v1 v2];
    % use min function to get minimum element from a vector 
    minR = min(sumVector);
        % use max function to get maximum element from a vector 
    maxR = max(sumVector);
end