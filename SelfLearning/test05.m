clc;
clear;
close all;

% Author : Akide Liu 
% Date : 24 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

word = input ('enter a word:','s');
permutation = [ ];

for i = 1:length(word)
    
   
    choice = randi (length(word));
    letter = word (choice);
    word(choice)=[];
 
 
    permutation = [permutation, letter];

    
end 

disp (permutation);