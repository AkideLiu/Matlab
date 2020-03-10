% width      height    areaRect
% 3          4        12.00
% 6.0        3.5      21.00

% 5           6           30.00
% 2           9           18.00
% 9           8           72.00

clc; clear; 

% Akide Liu 10/03/2020
% Accept a width and height from the user and output the area of a rectangle 
% Get input from the user
width = input('Please input the width of the rectangle : ');
height = input('Please input the height of the rectangle : ');
% Calculate the area of the rectangle 
areaRect = width * height;
% display the result to the user
fprintf("The rectange's area is %.2f units squard \n", areaRect);




% for index = 1:3
%     width = input('enter the width : ');
%     height = input('enter the height : ');
%     areas = width * height;
%     fprintf('The area is : %.2f \n', areas);
% end