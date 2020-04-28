clc;
clear;
close all;

% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE
% Version : 1.1.0

% ----------------------variable definition ----------------------
% Description : This script is the main entry of the Minesweeper program  

% defined the map size of mine
% result is the switch of the game
% 0     -- game in progress will continue
% 1     -- game stop, user lose the game 
% 2     -- game stop, user win the game 

rows = 9;
cols = 9;
result = 0;

% defined global variables, variables below will across all function and script in this project 

global aroundMineArray mineBoardArray mineDisplayArray;

% initial aroundMineArray use empty vector with the size of pre-define row and col 

aroundMineArray = zeros(rows,cols);

% initial mineDisplayArray use empty vector with the same size of aroundMineArray

mineDisplayArray = zeros(size(aroundMineArray));

% initial mineBoardArray use boradInitiator

mineBoardArray = boradInitiator(rows,cols);



% ----------------------program start ----------------------

% show welcome and instructions 

welcome();

% while loop will consider running status according to gameController

while result == 0

    % call inputController 
    % return x,y (the location of user's inputs )
    % input validation embedded in inputController

    [x,y] = inputController();
    
    % call bombEventProgresser
    % No return
    % this function will change ALL global variables during running time

    bombEventProgresser(x,y);

    % call gameController
    % return result
    % result will affect the loop 's running status 
    % result is the switch of the loop 
    % 0     -- game in progress will continue
    % 1     -- game stop, user lose the game 
    % 2     -- game stop, user win the game 

    [result] = gameController(x,y);
end
