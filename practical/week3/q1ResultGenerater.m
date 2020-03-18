
% this script will user's input
% first input is the start index of the initializedVector
% second input is the end index of the initializedVector
% input must in format of integer
% finally there will display formated results
% displayed results will be affected by initializedVector, resultVector

function q1ResultGenerater(initializedVector, resultVector)
    % initialize the limitVector,
    % this vector will sotre user's input 
    % limitWord is defined the strings which use for remind user's input .
    limitVector = zeros(1,2);
    limitWord = ["START","END"];
    
    % request input
    for j = 1:2
        limitVector(j) =  input('please enter ' + limitWord(j) +  ' to limit range of output : ');
    end
    
    % check input valid 
    if size(limitVector) ~= 2
        error('input error %s', limitVector);
    end

    % Use the input given range to filter the eligible numbers in vector A and their result which is the number in vector B, assign to the variable outputVector

    initializedVectorOut = initializedVector(initializedVector  >= limitVector(1) & initializedVector  <= limitVector(2));

    resultVectorOut = resultVector(initializedVector  >= limitVector(1) & initializedVector  <= limitVector(2));

    % display a reminder:
    fprintf('The 2 raised to the power of the integer in the [ %.0f - %.0f ] ranges are:\n', limitVector(1) , limitVector(2));

    

    fprintf('[');
    % Exclude decimals and output results
    % the for loop following works for remove the dcimal elements on the display stage 
    for i = (1:length(initializedVectorOut))
        initNum = initializedVectorOut(i);
        resultNum = resultVectorOut(i);

        % get remainder (in division) for elements.
        a = mod(initNum, 1);
        % define divisor .
        div = 1;
        digitNum = 0;
        % following while will check is this number can be exact division by 1 or not, if do so the element is accepted for display .
        while abs(a-0) > 1e-12
            a = mod(a, div);
            digitNum = digitNum + 1;
            div = 10^(-digitNum - 1);
        end

        % digitNum == 0 means that the number has been checked is integer 
        % if this element is an integer then display it .
        if digitNum == 0
            fprintf(' %.0f ', resultNum)
        end
    end
    fprintf(']\n');
end

