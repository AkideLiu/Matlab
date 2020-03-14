clc;
clear;
close all;

% this program will request user's input and check is this input can be divide by 4 or not.

num = input('Enter a number : ');

if mod(num, 4) == 0
    disp('divisible by four');
end