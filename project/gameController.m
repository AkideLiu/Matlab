% Author : Akide Liu
% Date : 14 / 04 / 2020
% License and copyright notice: GNU General Public License v3.0
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script gameController

function [result] = gameController(x, y)
    global  mineBoardArray ;

    selected_val = mineBoardArray(x, y);

    switch selected_val
        case 1
            result = 1;
            clc;
            endGame();
            fprintf('The location you selected row (%d) col(%d) is a Mine\n', x, y);
            disp('game Over ...');
            return;
        case 0
            result = 0
    end

end

function endGame()
    global aroundMineArray mineBoardArray mineDisplayArray;

    if isempty(find(mineDisplayArray ~= aroundMineArray))

        mineDisplayArray = mineBoardArray;
        mineDisplayArray(mineDisplayArray == 1) = -2;
        mineDisplayArray(mineDisplayArray == 0) = -1;

    else
        % mineDisplayArray = aroundMineArray;
        mineDisplayArray(mineBoardArray == 1) = -2;

    end

    boradPrinter(mineBoardArray);
end
