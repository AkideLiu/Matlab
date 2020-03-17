clc;
clear;
close all;

% read in length of vector
n = input('enter vecter length : ');

% start with empty result vector
result = [];

% build the vector
for i = 1:n
    % add a new vector element by concatenation
    result = [ result i*2 ];
end

% display the result
disp(result);