clc; clear;

sum = 0;

vec = zeros(5);

for i = 1:5
    vec(i) = input('Enter a number : ');
    % i is the vector indexes, it's NOT a argument.
    sum = sum + vec(i);
    % + symbol is increment.
    
end

fprintf('The mean of the entered numbers is : %f \n ', sum/5);