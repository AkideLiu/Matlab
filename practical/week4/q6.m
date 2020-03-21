clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script that uses for-loops to build a 2D array to make a version of this image that is flipped both vertically and horizontally and save it into a file called KandFlipped.png.

% read image from a file 
imageData = imread('Kand.png');

% get the size of imageData array.
[numRows,numCols] = size(imageData);

%define empty array as same size as  imageData;
newImageData = uint8.empty(numRows,0);
% define new image row index 
newImageRowIndex = 1;


% populate using a nested loop
% outer loop -- get row elements by a reversed order (from numRows to  1)
% In following loop:

% row is the row index of elements in imageData array 
% col is the column index of elements in imageData array 
% both row and col are decreasing step by 1;

% newImageRowIndex is the row index of elements in newImageData array 
% newImageColIndex is the column index of elements in newImageData array 
% both newImageRowIndex and newImageColIndex are increasing step by 1;

% specifically, newImageRowIndex just initializes once in whole program, but newImageColIndex is ongoing initializing while row number changing.

for row = [numRows:-1:1]

    % define new image column index 
    newImageColIndex = 1;

    % inner loop -- get column elements by a reversed order (from numRows to  1)
    for col = [numCols:-1:1]

        newImageData(newImageRowIndex,newImageColIndex) = imageData(row,col);
        
        newImageColIndex = newImageColIndex + 1;
    end
    newImageRowIndex = newImageRowIndex + 1;
end


% display as an image
imshow(newImageData);

% save as an image
imwrite(newImageData, 'KandFlipped.png');



