% Author : Akide Liu
% Date : 13 / 04 / 2020
% License and copyright notice: GNU General Public License v3.0
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...
function [x, y] = inputController()

    % pre-defined inputValidation as false ;

    inputValidation = false;

    % inputValidation will change in progress of the inputSubController
    while (inputValidation == false)

        % call boradPrinter to display borad
        boradPrinter();
        [x, y, inputValidation] = inputSubController();
    end

end

function [x, y, inputValidation] = inputSubController()

    inputValidation = false;

    % wrong x and y
    x = 0;
    y = 0;

    location = input('Enter the location you want to mine: (row col) : ',  's');

    % format input
    splitLocation = strsplit(location,  ' ');

    % invalid condition
    if length(splitLocation) ~= 2
        disp('Please you enter a space between row and col (e.g. 1 2)')
        fprintf('Press any key to continue! \n')
        input('Awaiting your response ...',  's');
        inputValidation = false;
        return;
    end

    % format input , from string to double
    preX = str2double(splitLocation(1));
    preY = str2double(splitLocation(2));

    % check the range of input.

    if ((preX > 0 && preX < 10) && (preY > 0 && preY < 10) && (mod(preX, 1) == 0) && (mod(preY, 1) == 0))

        x = preX;
        y = preY;
        inputValidation = true;
        return;

    else

        % invalid condition

        fprintf('invalid input, your input is %s \n', location);
        disp('Please you enter a space between row and col (e.g. 1 2)')
        disp('Please make sure entered number in range of [1 9]')
        fprintf('Press any key to continue! \n')
        input('Awaiting your response ...',  's');

        inputValidation = false;
        x = 0;
        y = 0;
    end

end
