clc;
clear;
name = 'John Wayne';

% initialize testArray
testArray = char(zeros(7));

% put all test cases into testArray
testArray(1) = name(4);
testArray(2) = name(9);
testArray(3) = name(8);
testArray(4) = name(3);
testArray(5) = name(length(name));
testArray(6) = name(length(name)-1);
testArray(7) = name(length(name-1));


for i = [1:length(testArray)]
    if eq(testArray(i), 'n')

        % Test case Number refer index of testArray
        disp("test case Number : " + i + " is correct");
    end
end