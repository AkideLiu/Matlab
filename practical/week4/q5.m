clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script that uses nested loops to create a 100 by 100 element 2D array representing an image that shades from white at the image edges to black in the image centre 


% make a 2d array of values.
% set up an empty array
imageData = [];
imSize = 100;
numRows = imSize;
numCols = imSize;

% populate using a nested loop

% following vector created from 100/2 to 1 decreasing step by 1 , then from 1 to  100/2 increaseing step by 1.
for row = [(numRows/2:-1:1) , (1:numRows/2)]
    % empty vector for row
    imageRow = [];

    % following vector created from 100/2 to 1 decreasing step by 1 , then from 1 to  100/2 increaseing step by 1.
    for col = [(numCols/2:-1:1) , (1:numCols/2)]
        % make a pixel val in 0..1
        pixelVal = (col+row)/(imSize);
        % add value for pixel
        imageRow = [imageRow pixelVal];
    end
    imageData = [imageData; imageRow];
end



% display as an image
imshow(imageData);

% save as an image
imwrite(imageData, 'test5.png');

% load an image
newImageData = imread('test5.png');
whos newImageData;
