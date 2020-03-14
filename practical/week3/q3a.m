clc;
clear;
close all;

% this program will request user's input and check is this input can be divide by 4 or not.
% request input 
num = input('Enter a number : ');


% check the single element can be divided by 4 or not
if mod(num, 4) == 0
    % if current element can be divided by, display following out :        
    disp('divisible by four');
end