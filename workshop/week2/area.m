% width      height    areaRect
% 3          4        12.00
% 6.0        3.5      21.00

% 5           6           30.00
% 2           9           18.00
% 9           8           72.00

clc; clear; 

for index = 1:3
    width = input('enter the width : ');
    height = input('enter the height : ');
    areas = width * height;
    fprintf('The area is : %.2f \n', areas);
end