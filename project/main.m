clc;
clear;
close all;

% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE
% Version : 1.0.1

% Description : This script Minesweeper 

rows = 9;
cols = 9;

global aroundMineArray mineBoardArray mineDisplayArray;
aroundMineArray = zeros(rows,cols);
mineDisplayArray = zeros(size(aroundMineArray));

inputValidation = false;


welcome();
mineBoardArray = boradInitiator(rows,cols);


while (inputValidation == false)
    boradPrinter();
    [x,y,inputValidation] = inputController();
end

if mineBoardArray(x,y) == 1
    result = 1;
    gameController(x,y);
else
    result = 0;
end

while result == 0
    bombEventProgresser(x,y);
    boradPrinter();
    [x,y,inputValidation] = inputController();
    [result] = gameController(x,y);
end

% debug bombEventProgresser 
% for i = 1:length(rows)
%     mineBoardArray(rows(i),cols(i))
% end


