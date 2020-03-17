clc;
clear;
close all;

% reads in number prints in reserve skipping every third number

% ask user for how many 

amount = input('How many numbers do you want to enter? ');

numbers = []; %initialization optional in MATLAB
              % MATLAB automatically creates space for vectors, other programme language need to initialization . (The lower level the programm, the less likely the program will do this for you.) 

% read in the numbers

for i = 1:amount
    numbers(i) = input('Enter number : ');
end

% ignoring every third number

% 4 3 2 1           1

% 5 4 3 2 1         2

% 5 4 3 2 1         0


% disp('num1:');
% num1 = mod(length(numbers), 3)
for i = amount-2:-2:1
    numbers(i)=[];
end

% the index of amount vector is changed in the above operation 

length(numbers);
% print the number in reverse ingoring every third number 
for i = length(numbers):-1:1
    % condition is false or true            length(numbers):-1:1
     fprintf('%d', numbers(i)); 

    %  subscript is the index of a vector  , i in following :          numbers(i)
end
fprintf('\n');