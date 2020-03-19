clc;
clear;
close all;

result = 0;

 

for i = 1:5

    for j = i:3

        result = result+1;

    end

end

disp(result);