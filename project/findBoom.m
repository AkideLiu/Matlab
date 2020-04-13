% Author : Akide Liu
% Date : 13 / 04 / 2020
% License and copyright notice: GNU General Public License v3.0
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script findBoom

function [finalRowIndexArray, finalColIndexArray, numsOfBoomAround] = findBoom(x, y)
    global displayBoomArray finalBorad boomMap;

    reDisplayMap();

    % define a test array company to selected array
    testArray = ones(3);
    % catch selected array from finalBorad
    selectedArray = finalBoradProgress(x, y);

    boomLocation = find(testArray == selectedArray);

    if length(boomLocation) > 0

        BoomsAround(x, y);
        boomMap(x,y) = displayBoomArray(x,y);

    elseif length(boomLocation) == 0

        noBoomsAround(x, y);
        spread(x, y);

    end

end

function reDisplayMap()
    global displayBoomArray finalBorad;
    [rows, cols] = size(displayBoomArray);

    for row = 1:rows

        for col = 1:cols

            if finalBorad(row, col) ~= 1
                BoomsAround(row, col);
            end

        end

    end

    displayBoomArray(displayBoomArray == 0) = -1;
    displayBoomArray(finalBorad == 1) = 0;
end

function [selectedArray] = finalBoradProgress(x, y)

    global finalBorad;
    [cols, rows] = size(finalBorad);

    plusBoomArray = zeros(cols + 2, rows + 2);

    plusBoomArray(2:end - 1, 2:end - 1) = finalBorad;

    % selectedArray = zeros(3);

    % xIndex and yIndex works for plus Boom array
    xIndex = x + 1;
    yIndex = y + 1;
    selectedArray = plusBoomArray(xIndex - 1:xIndex + 1, yIndex - 1:yIndex + 1);

end

function output = noBoomsAround(x, y)

    global displayBoomArray finalBorad;

    % define there are no booms
    for xIndex = x - 1:x + 1

        for yIndex = y - 1:y + 1

            if (xIndex >= 1 && xIndex <= 9) && (yIndex >= 1 && yIndex <= 9)
                displayBoomArray(xIndex, yIndex) = -1;
            end

        end

    end

end

function [finalRowIndexArray, finalColIndexArray, numsOfBoomAround] = BoomsAround(x, y)

    global displayBoomArray;

    testArray = ones(3);
    % catch selected array from finalBorad
    selectedArray = finalBoradProgress(x, y);

    boomLocation = find(testArray == selectedArray);

    finalRowIndexArray = [];
    finalColIndexArray = [];
    % https://au.mathworks.com/help/matlab/ref/ind2sub.html
    % convert Convert linear indices to subscripts
    [rows, cols] = ind2sub(size(selectedArray), boomLocation);

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

    numsOfBoomAround = length(rows);
    displayBoomArray(x, y) = numsOfBoomAround;
end


% spread based on Depth First Search algorithm (DFS)
% reference : 
% https://www.geeksforgeeks.org/depth-first-search-or-dfs-for-a-graph/

function output = spread(x, y)

    global displayBoomArray finalBorad boomMap;

    i = -1;
    j = -1;

    for i = -1:1

        for j = -1:1

            if i ~= 0 || j ~= 0
                new_x = x + i
                new_y = y + j

                if (new_x >= 1 && new_x <= 9 && new_y >= 1 && new_y <= 9)

                    if (boomMap(new_x, new_y) == 0) && (finalBorad(new_x, new_y) ~= 1)

                        [r, c, nums] = BoomsAround(new_x, new_y);

                        if nums ~= 0

                            boomMap(new_x, new_y) = displayBoomArray(new_x, new_y);
                        else

                            boomMap(new_x, new_y) = -1;
                            spread(new_x, new_y);
                        end

                    end

                end

            end

        end

    end

end
