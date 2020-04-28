clc;
clear;
close all;

% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE
% Version : 1.0.2

% Description : This script Minesweeper 

rows = 9;
cols = 9;
result = 0;

global aroundMineArray mineBoardArray mineDisplayArray;

aroundMineArray = zeros(rows,cols);

mineDisplayArray = zeros(size(aroundMineArray));

mineBoardArray = boradInitiator(rows,cols);

% welcome();

while result == 0
    
    [x,y] = inputController();
    
    bombEventProgresser(x,y);

    [result] = gameController(x,y);
end
