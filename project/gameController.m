% Author : Akide Liu
% Date : 14 / 04 / 2020
% License and copyright notice: GNU General Public License v3.0
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script gameController

function [result] = gameController(x, y)
    global displayBoomArray finalBorad boomMap;

    selected_val = finalBorad(x, y);

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
    global displayBoomArray finalBorad boomMap;

    if length(find(boomMap ~= displayBoomArray)) == 0

        boomMap = finalBorad;
        boomMap(boomMap == 1) = -2;
        boomMap(boomMap == 0) = -1;

    else
        % boomMap = displayBoomArray;
        boomMap(finalBorad == 1) = -2;

    end

    printUserBoard(finalBorad);
end
