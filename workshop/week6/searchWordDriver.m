clc;
clear;
close all;

% Author : Akide Liu 
% Date : 07 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

dict = readDictionary('resource/dictionary.txt');

disp(searchWord(dict,"high"));
disp(searchWord(dict,"low"));
disp(searchWord(dict,"medium"));
disp(searchWord(dict,"median"));