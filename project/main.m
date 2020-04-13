clc;
clear;
close all;

% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE
% Version : 1.0

% Description : This script Minesweeper 

rows = 9;
cols = 9;

global displayBoomArray finalBorad boomMap;
displayBoomArray = zeros(rows,cols);
boomMap = zeros(size(displayBoomArray));

inputValidation = false;


welcome();
finalBorad = initBorad(rows,cols);


while (inputValidation == false)
    printUserBoard(finalBorad);
    [x,y,inputValidation] = readInput();
end

if finalBorad(x,y) == 1
    result = 1;
    gameController(x,y);
else
    result = 0;
end

while result == 0
    findBoom(x,y);
    printUserBoard(finalBorad);
    [x,y,inputValidation] = readInput();
    [result] = gameController(x,y);
end

% debug findBoom 
% for i = 1:length(rows)
%     finalBorad(rows(i),cols(i))
% end


