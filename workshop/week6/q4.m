clc;
clear;
close all;

% Author : Akide Liu 
% Date : 29 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script is Generating a vector of random letters

% generate the length of random letters 
numLetters = randi(26);

% define a storage vector 
randLetters = char.empty(numLetters,0);

for i = 1:numLetters
    % generate random chars
    randChar=char(floor(rand()*26)+'a');
    randLetters(i) = randChar;
end


fprintf('number of letters : %d , random word is : %s \n', numLetters, string(randLetters));