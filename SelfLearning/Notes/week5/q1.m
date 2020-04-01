clc;
clear;
close all;

% Author : Akide Liu 
% Date : 30 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

names_vector = [];
ages_vector = [];

% get the values from user untils  i see  -1

age = input('Enter age , enter -1 when done : ');


while age ~= -1
    name = input('Enter a name : ', 's');
    names = [names_vector name];
    ages = [ages_vector age];
    age = input('Enter age , enter -1 when done : ');
end