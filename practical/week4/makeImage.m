clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script makes a 100 by 100 pixel  image that is dark in the top left corner and diagonally shades to light in the bottom right corner.

% make a 2d array of values.
% set up an empty array
imageData = [];
imSize = 100;
numRows = imSize;
numCols = imSize;

% populate using a nested loop

for row = [1:numRows]
    % empty vector for row
    imageRow = [];
    for col = [1:numCols]
        % make a pixel val in 0..1
        pixelVal = (row+col)/(imSize*2);
        % add value for pixel
        imageRow = [imageRow pixelVal];
    end
    imageData = [imageData; imageRow];
end

% display as an image
imshow(imageData);

% save as an image
imwrite(imageData, 'test.png');

% load an image
newImageData = imread('test.png');
whos newImageData;
