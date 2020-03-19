clc;
clear;
close all;

numbers = zeros(10);
rows = size(numbers, 1);
columns = size(numbers, 2);

for row = [1:rows]
  for column = [1:columns]
    numbers(row, column) = row;
  end
end

disp(numbers(6,6));