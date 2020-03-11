clc;
clear;
% clear console   


% The variable 'StorageArray' appears to change size on every loop iteration (within a script). Consider preallocating for speed.
% So user zeros() function to a
StorageArray = zeros(1:5);

for i = 1:5
    height = input('enter height : ');
    StorageArray(i) = height;
end

for i = 1:5
    disp(StorageArray(i));
end