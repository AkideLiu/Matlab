
% Author : Akide Liu 
% Date : 07 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
function [ words ] = findMatches(dictionary, searchWord)

    words = [];
    
    for i=[1:length(dictionary)]
        
        if (length(strfind(dictionary(i),searchWord))>0) % does the word match? 
            words = [words dictionary(i)];
        end

    end

end