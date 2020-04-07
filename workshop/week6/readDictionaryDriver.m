clc;
clear;
close all;

% Author : Akide Liu 
% Date : 07 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
dict = readDictionary('resource/dictionary.txt'); % read dictionary
% disp(dict);
disp(dict(1:10)); % display first 10 entries
disp(dict(end-10:end)); % display last 10 entries