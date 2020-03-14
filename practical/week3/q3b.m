clc;
clear;
close all;

% define years
years=[2015:2041];
% years=[2015:2019];

% preallocate huge size empty vector, the size is 22241 - 2015
leapYears = int16.empty(length(years),0);

% define a index which only change when confidential works
lastIndex = 0;
for i = 1:length(years)
    % check the single element can be divided by 4 or not
    if mod(years(i),4) == 0
        % if current element can be divided by, append it into leapYears vector.
        leapYears(lastIndex + 1) = years(i);
        % only increase index when confidential works
        lastIndex = lastIndex + 1;
    end
end

% remove all empty elements.
leapYears = leapYears(leapYears ~= 0);

% display output 
disp(num2str(leapYears));
