% Author : Akide Liu
% Date : 14 / 04 / 2020
% License and copyright notice: GNU General Public License v3.0
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script gameController

function [result] = gameController(x, y)
    global  mineBoardArray ;

    % get selected value from mineBoardArray
    selected_val = mineBoardArray(x, y);

    % if selected_val  == 1 , user attacks mine, user lose 
    % return result = 1
    % if selected_val  == 0 , user does not attack mine, game counties 
    % return result = 0

    switch selected_val
        case 1
            result = 1;
            clc;
            endGame();
            fprintf('The location you selected row (%d) col(%d) is a Mine\n', x, y);
            disp('game Over ..., you lose');
            return;
        case 0
            result = 0;
    end

    % Determine whatever the user wins the game
    % if result == 2, user wins game, game finish 
    % if result == 0 , game conties
    result = winGame();

    

end

function endGame()
    global aroundMineArray mineBoardArray mineDisplayArray;

    % compare mineDisplayArray and aroundMineArray
    if isempty(find(mineDisplayArray ~= aroundMineArray))

        mineDisplayArray = mineBoardArray;

        % modify mineDisplayArray's value 
        mineDisplayArray(mineDisplayArray == 1) = -2;
        mineDisplayArray(mineDisplayArray == 0) = -1;

    else
        mineDisplayArray(mineBoardArray == 1) = -2;
        mineDisplayArray(mineDisplayArray == 0) = -1;

    end

    boradPrinter();
end

function result = winGame()
    global mineBoardArray mineDisplayArray;

    % check how many unselected block , if equals 10 means user wins 
    if length(find(mineDisplayArray == 0)) == 10
        mineDisplayArray(mineBoardArray == 1) = -2;
        mineDisplayArray(mineDisplayArray == 0) = -1;
        clc;
        boradPrinter();
        disp('game Over ..., you win');
        result = 2;
        return;
    else
        result = 0;
    end
end