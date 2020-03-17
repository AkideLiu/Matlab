clc;
clear;
close all;
% create a vector of 5 random numbers from -10 to 10 count the number that are positive 

% create a vector 

for i = 1:5
    numbers(i) = randi([-10,10]);
    % number(i) = randi(20)-10;

    % count the postive numbers
    count = 0;
    if numbers(i) > 0
        count = count + 1;
    end

    % subtract 3 from each element 
    numbers(i) = numbers(i) - 3;
end

if mod(numbers(i), 2) == 0
end
    
% count the numbers 
count = 0;

for i = 1:5;
    if numbers(i) > 0
        count = count + 1;
    end
end

% disp(count)

% subtract 3 from each element 

for i =1:5
    numbers(i) = numbers(i) - 3;
end

