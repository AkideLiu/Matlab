
% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...

function resultGenerater(initializedVector, resultVector)

    inScriptDefinedVectoersResultGenerater(initializedVector,resultVector);

    
    % request paraments from script
    function inScriptDefinedVectoersResultGenerater(A,B)
        is2D = twoDVectorChecker(A,B);
        % true -- > 1
        if is2D == 1
            twoDVectorOutput(A,B);
        else
            oneDVectorOutput(A,B);
        end
    end

    function  oneDVectorOutput(firstVector,SecondVector)

        disp('The reuslt is a 1D vecor');

        fprintf('The Vector A is : [ %s ] \n',num2str(firstVector));

        % https://au.mathworks.com/matlabcentral/answers/106341-how-to-get-type-of-a-variable-in-matlab

        % isa determine second vector's type 
        if isa(SecondVector, 'sym')
            fprintf('The Vector B is : [ %s ] \n',SecondVector);
        else
            fprintf('The Vector B is : [ %s ] \n',num2str(SecondVector));
        end

    end

    function  twoDVectorOutput(firstVector,SecondVector)
        disp('The reuslt is a 2D vecor');
        fprintf('The Vector A is : [ %s ] \n',num2str(firstVector));
        fprintf('The Vector B is : \n');
        disp(SecondVector);

    end

    % check is this a 2D vector 
    % true -- > 1
    % flase -- > 0
    function is2D = twoDVectorChecker(inputVector1,inputVector2);

        % https://au.mathworks.com/help/matlab/ref/nargin.html
        switch nargin
        case 2
            [rowNum1,colNum1] = size(inputVector1);
            [rowNum2,colNum2] = size(inputVector2);
            if (rowNum1 > 1 || rowNum2 > 1)
                is2D = 1;
            else
                is2D = 0;
            end
        case 1
            [rowNum1,colNum1] = size(inputVector1);
            if (rowNum1 > 1)
                is2D = 1;
            else
                is2D = 0;
            end

        otherwise
            error('Not enough arguments');
        end
    end
end