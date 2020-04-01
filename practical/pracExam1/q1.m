clc;
clear;
close all;

% Author : Akide Liu 
% Date : 01 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

% request user's input to determine amount of numbers need to enter 
numOfInput = input('How many numbers will you enter?: ');

% define number input number storage array 
numArray = zeros(numOfInput,1);

% use for loop to request user's input for numbers 
for i = 1:numOfInput
    number = input('Enter a number:');
    numArray(i) = number;
end

% define a new array as the same length as numOfInput
newNumArray = zeros(numOfInput,1);

% define a first index 
firstIndex = 2;

% create a loop range of 1 to half numOfinput.
% 
for j = 1:1:numOfInput/2
    newNumArray(firstIndex) = numArray(j);
    firstIndex = firstIndex + 2;
end

secondIndex = 1;
for n = numOfInput:-1:numOfInput/2+1
    newNumArray(secondIndex) = numArray(n);
    secondIndex = secondIndex + 2;
end

if mod(numOfInput, 2) == 1
    % isThisOddNumArray = true;
    newNumArray(end) = numArray(round(numOfInput/2));
end

disp(num2str(newNumArray));
