clc;
clear;

StorageArray = zeros(1:5);
for i = 1:5
    height = input('enter height : ');
    StorageArray(i) = height;
end

for i = 1:5
    disp(StorageArray(i));
end