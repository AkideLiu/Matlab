clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script that uses nested loops to create a 100 by 100 element 2D array representing an image that shades from black at the top to white at the bottom


% make a 2d array of values.
% set up an empty array
imageData = [];
imSize = 100;
numRows = imSize;
numCols = imSize;

% populate using a nested loop

for row = [numRows:-1:1]
    % empty vector for row
    imageRow = [];
    for col = [1:numCols]
        % make a pixel val in 0..1
        pixelVal = (row)/(imSize);
        % add value for pixel
        imageRow = [imageRow pixelVal];
    end
    imageData = [imageData; imageRow];
end

% display as an image
imshow(imageData);

% save as an image
imwrite(imageData, 'test2.png');

% load an image
newImageData = imread('test2.png');
whos newImageData;
