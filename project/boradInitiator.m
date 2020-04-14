% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script will initialize borad 

function mineBoardArray = boradInitiator(rows,cols)

    debug_enable = false;

    mineBoardArray = createBorad(rows,cols,debug_enable);
end

function mineBoardArray = createBorad(rows,cols,debug_enable)
    borad = zeros(rows,cols);

    count = 10;
    while count > 0
        x = randi([1,9]);
        y = randi([1,9]);
        if borad(x,y) ~= 1
            borad(x,y) = 1;
            count = count - 1;
        end
    end
    
    if debug_enable == true
        debugPrint(borad);
    end

    mineBoardArray = borad;

end


function debugPrint(mineBoardArray)

    [rows,cols] = size(mineBoardArray);

    for i = 1:rows
        fprintf(' %d ', i);
    end
    fprintf('\n');
    fprintf('---------------------------\n');

    for row = 1:rows
        for col = 1:cols
            fprintf(' %d ', mineBoardArray(row,col));
            if col == cols
                fprintf(' | %d ', row);
            end
        end
        fprintf('\n');
    end
    fprintf('---------------------------\n');

end

