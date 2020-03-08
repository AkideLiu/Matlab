clc;
clear;

number = 0.05;
count = 0;
for i = 1:10
    count = count + power(number, i);
    % disp(power(number, i))
end

per = 1 - count;
disp(per);

disp( (50 * per + 5 * (1 + count)) / 2 );

