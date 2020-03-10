% width      height    expected perimeterRect  observed perimeterRect
% 3           4               14.00                 14.00
% 6.0         3.5             19.00                 19.00 
% 5           -6              -2.00                 -2.00
% -2           -9             -22.00                -22.00
% 9           'six'           error                 248.00,228.00,258.00

clc; clear; 

% Akide Liu 10/03/2020
% Accept a width and height from the user and output the perimeter of a rectangle 
% Get input from the user
width = input('Please input the width of the rectangle : ');
height = input('Please input the height of the rectangle : ');
% Calculate the perimeter of the rectangle 
perimeterRect = (width + height)*2;
% display the result to the user
fprintf("The rectange's perimeter is %.2f units  \n", perimeterRect);




