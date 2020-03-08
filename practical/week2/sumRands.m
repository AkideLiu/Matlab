clc; clear;


total = 0;
for i = 1:5
    % The code below range in 0 - 10;
    number =  round(rand()*9)+1;

    % debug property;
    % disp(number);

    total = total + number;
end
disp(total);