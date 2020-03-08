clc; clear;

total = 0;

% The variable 'numberArray' appears to change size on every loop iteration (within a script). Consider preallocating for speed.
numberArray = zeros(1,5);

for i = 1:5
    number = input('enter a num : ');
    numberArray(i) = abs(number);
    total = numberArray(i) + total;   
end
fprintf('the abs sum is: %.1f \n', total);
