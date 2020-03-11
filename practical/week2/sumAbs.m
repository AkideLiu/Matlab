clc; clear;

% initial total 
total = [];

% The variable 'numberArray' appears to change size on every loop iteration (within a script). Consider preallocating for speed.
% user zeros() function to create an alocate vector to make program running fast.
numberArray = zeros(1,5);

% create a loop for 5 times;
for i = 1:5
    % request user's input 
    number = input('enter a num : ');
    % put every input number and make it to absolute value into numberArray 
    numberArray(i) = abs(number);
    % increment of total 
    total = numberArray(i) + total;
end

% output absolute sum
fprintf('the abs sum is: %.1f \n', total);
