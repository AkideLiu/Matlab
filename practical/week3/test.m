clc;
clear;
close all;

% define years
years=[2015:222410];

% define leapYears
leapYears = [];

for i = 1:length(years)
    if mod(years(i),4) == 0
        leapYears = [leapYears , years(i)];
    end
end

disp(num2str(leapYears));