clc; clear;


% initialize total

total = 0;

% create a loop 
for i = 1:5
    % The code below range in 0 - 10;
    number =  round(rand()*9)+1;

    % debug property;
    % disp(number);

    % increment of total 
    total = total + number;
end

% display total 
disp(total);