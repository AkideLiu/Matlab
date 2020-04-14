% Author : Akide Liu
% Date : 13 / 04 / 2020
% License and copyright notice: GNU General Public License v3.0
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script bombEventProgresser

function bombEventProgresser(x, y)

    global aroundMineArray mineDisplayArray;

    generateAroundMineArray();

    % define a test array company to selected array
    testArray = ones(3);
    % catch selected array from mineBoardArray
    selectedArray = mineBoardArrayProgress(x, y);

    bombLocation = find(testArray == selectedArray);

    if ~isempty(bombLocation)

        BombsAround(x, y);

        mineDisplayArray(x, y) = aroundMineArray(x, y);

    elseif isempty(bombLocation)

        noBombsAround(x, y);

        spread(x, y);

    end
end

function generateAroundMineArray()

    global aroundMineArray mineBoardArray;

    [rows, cols] = size(aroundMineArray);

    for row = 1:rows

        for col = 1:cols

            if mineBoardArray(row, col) ~= 1

                BombsAround(row, col);
            end

        end

    end

    aroundMineArray(aroundMineArray == 0) = -1;

    aroundMineArray(mineBoardArray == 1) = 0;

end

function [selectedArray] = mineBoardArrayProgress(x, y)

    global mineBoardArray;

    [cols, rows] = size(mineBoardArray);

    plusBombArray = zeros(cols + 2, rows + 2);

    plusBombArray(2:end - 1, 2:end - 1) = mineBoardArray;

    % selectedArray = zeros(3);

    % xIndex and yIndex works for plus Bomb array
    xIndex = x + 1;

    yIndex = y + 1;

    selectedArray = plusBombArray(xIndex - 1:xIndex + 1, yIndex - 1:yIndex + 1);

end

function noBombsAround(x, y)

    global aroundMineArray;

    % define there are no bombs
    for xIndex = x - 1:x + 1

        for yIndex = y - 1:y + 1

            if (xIndex >= 1 && xIndex <= 9) && (yIndex >= 1 && yIndex <= 9)
                aroundMineArray(xIndex, yIndex) = -1;
            end

        end

    end

end

function [finalRowIndexArray, finalColIndexArray, numsOfBombAround] = BombsAround(x, y)

    global aroundMineArray;

    testArray = ones(3);
    % catch selected array from mineBoardArray
    selectedArray = mineBoardArrayProgress(x, y);

    bombLocation = find(testArray == selectedArray);

    finalRowIndexArray = [];
    finalColIndexArray = [];
    % https://au.mathworks.com/help/matlab/ref/ind2sub.html
    % convert Convert linear indices to subscripts
    [rows, cols] = ind2sub(size(selectedArray), bombLocation);

    % rows == cols
    % x-1,y-1   x,y-1   x+1,y-1
    % x,y-1     x,y     x+1,y-1
    % x-1,y+1   x,y+1   x+1,y+1
    for i = 1:length(rows)
        % finalRowIndex = y + (cols(i) - 2);
        finalRowIndex = x + (rows(i) - 2);

        finalRowIndexArray = [finalRowIndexArray finalRowIndex];

        % finalColIndex = x + (rows(i) - 2);
        finalColIndex = y + (cols(i) - 2);
        
        finalColIndexArray = [finalColIndexArray finalColIndex];
    end

    numsOfBombAround = length(rows);
    
    aroundMineArray(x, y) = numsOfBombAround;
end

% spread based on Depth First Search algorithm (DFS)
% reference :
% https://www.geeksforgeeks.org/depth-first-search-or-dfs-for-a-graph/

function spread(x, y)

    global aroundMineArray mineBoardArray mineDisplayArray;

    for i = -1:1

        for j = -1:1

            if i ~= 0 || j ~= 0
                new_x = x + i;
                new_y = y + j;

                if (new_x >= 1 && new_x <= 9 && new_y >= 1 && new_y <= 9)

                    if (mineDisplayArray(new_x, new_y) == 0) && (mineBoardArray(new_x, new_y) ~= 1)

                        [~, ~, nums] = BombsAround(new_x, new_y);

                        if nums ~= 0

                            mineDisplayArray(new_x, new_y) = aroundMineArray(new_x, new_y);
                        else

                            mineDisplayArray(new_x, new_y) = -1;
                            spread(new_x, new_y);
                        end

                    end

                end

            end

        end

    end

end
