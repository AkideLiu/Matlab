% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

function boradPrinter()
    clc;

    global mineBoardArray mineDisplayArray;
    [rows,cols] = size(mineBoardArray);


    for i = 1:rows
        fprintf('  %d ', i);
    end
    fprintf('\n');
    fprintf('--------------------------------------\n');


    row_count = 1;
    for row = 1:rows*2
        for col = 1:cols
            if mod(row, 2) == 1

                % display how many bombs around selected location.
                % element = aroundMineArray(row_count,col);
                element = mineDisplayArray(row_count,col);
                if element > 0
                    fprintf('| %d ',element);
                elseif element == -1
                    fprintf('|   ');
                elseif element == -2
                    fprintf('| M ');
                else
                    fprintf('| * ');
                end


                % debug numbers output 
                % fprintf('%d', mineBoardArray(row_count,col));

                % print column number 
                if col == cols
                    fprintf('| %d ', row_count);
                    row_count = row_count + 1;
                end

            else
                fprintf(' ___');
            end

        end
        fprintf('\n');
    end

end
