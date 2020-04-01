clc;
clear;
close all;

% Author : Akide Liu 
% Date : 29 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...


% read in vector of charactor arrays
dictText = fileread('resource/dictionary.txt');

% split the text array into words
dictWords = splitlines(dictText);

% remove the last empty line
dictWords = dictWords(1:end-1);


% build the dictionary from a text array
dictionary = [];
for i = [1:length(dictWords)]
    % concatntenate the string onto the end of the dictionary
    dictionary = [dictionary string(dictWords(i))];
end

% search for word ;

searchWord = input('enter the word for search : ', 's');

% loop to look for dictionary entry 

for i = [1:length(dictionary)]
    % does the word match 
    if (strcmp(searchWord, dictionary(i)))
        % print message 
        fprintf('found words: %s at position : %d \n', dictionary(i), i);
    end
end