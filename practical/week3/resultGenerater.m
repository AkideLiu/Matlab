% following function will return the integer of VECTOR B (resultVector) in range of VECTOR A (initializedVector)

% user is required to enter 2 number [start,end] to limit the range of VECTOR A

function resultGenerater(initializedVector, resultVector)
    limitVector = zeros(2);
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
    for i = (1:length(initializedVectorOut))
        initNum = initializedVectorOut(i);
        resultNum = resultVectorOut(i);

        a = mod(initNum, 1);
        div = 1;
        digitNum = 0;
        while abs(a-0) > 1e-12
            a = mod(a, div);
            digitNum = digitNum + 1;
            div = 10^(-digitNum - 1);
        end

        % digitNum == 0 means that the number has been checked is integer 
        if digitNum == 0
            fprintf(' %.0f ', resultNum)
        end
    end
    fprintf(']\n');
end

