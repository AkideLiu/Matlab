% this program calculates some properties of a circle
clc; clear;


r = input('Enter a radius in centimetres : ');
area = pi * r ^ 2;
circumference = 2 * pi * r;

fprintf('A circle with radius %d cm has area %.4f cm^2 ', r, area);
fprintf('and circumference %.4f cm \n', circumference );
