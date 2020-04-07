% Author : Akide Liu 
% Date : 29 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
% read in a dictionary of 1000 most common words

function [ words ] = readDictionary(dictFile)
    % reads a dictionary file in the same directory and 
    % returns a vector of strings in words.
    dictText=fileread(dictFile); % read in character arrays
    dictWords=splitlines(dictText); % split the text array into words
    dictWords=dictWords(1:end-1); % remove the last empty line
    
    % build the dictionary from a text array
    words=[]; % empty array
    for i=[1:length(dictWords)]   
        % concatenate the string onto the end of the dictionary   
        words=[words string(dictWords(i))];
    end
end

