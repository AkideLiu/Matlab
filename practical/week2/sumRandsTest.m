clc;
clear;

overAllTotal = 0;
overRTotal = 0;
testTimes = 10000000;
for i = 1:testTimes
    [Num1,Num2] = sumRandsTest01();
    overAllTotal = overAllTotal + Num1;
    overRTotal = overRTotal + Num2;
    % disp(number);
end
disp(overAllTotal / testTimes);
disp(overRTotal / testTimes);


% rTotal refer round(rand())；
function [total,rTotal] = sumRandsTest01()
        total = 0;
        rTotal = 0;
    for i = 1:5
        % The code below range in 0 - 10;
        % number =  round(rand()*10);
        number =  round(rand()*9)+1;
        
        % use a conditional to limit number into required range (1-10);
        while number < 1
            number =  round(rand()*10);
        end

        % test the conditional above working properly.
        if number < 1 || number > 10
            disp(number);
            error('number < 1 or > 10 ');
        end

        % debug property;
        % disp(number);

        total = total + number;

        rTotal = rTotal + round(rand());
    end
end


