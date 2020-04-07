
% Author : Akide Liu 
% Date : 29 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...


function [ index ] = searchWord( dictionary , word )
    %returns word's index if word is found in dict and false otherwise
    % loop to look for dictionary entry
    index=-1;
    for i=[1:length(dictionary)]
        if (strcmp(word,dictionary(i))) % does the word match? 
            index=i;
        end
    end
end