clc; clear;


total = 0;
for i = 1:5
    % The code below range in 0 - 10;
    number =  round(rand()*10);

    % use a conditional to limit number into required range (1-10);
    while number < 1
        number =  round(rand()*10);
    end

    % debug property;
    disp(number);

    total = total + number;
end
disp(total);