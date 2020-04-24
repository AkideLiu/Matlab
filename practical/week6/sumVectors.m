% Author : Akide Liu 
% Date : 24 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script called sumVectors that takes two vectors v1 and v2 (you can assume these vectors have the same length) as its parameters and returns one value that is the sum of both of these vectors. 

function sumR = sumVectors(v1,v2)
    % definition of a new vector called sumVector and it combines vector v1 and v2 together .
    sumVector = [v1 v2];
    % use sum function to calculate the sum of sumVector 
    sumR = sum(sumVector);
    
end
