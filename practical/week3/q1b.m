clc;
clear;
close all;

% this program will create a new vector C that contains the 2 raised to the power of the numbers in A.
% Notice : configure line 24 and 29 can affect outputs,
%          configure line 13 can change range of VECTOR A (initial VECTOR);

% define Vector A
% A = [-10:0.5:10];

% test case [-100 - 100]
A = [-100:0.5:100];


% create empty vector B , as the same length of vector A
B = zeros(size(A));

for i = [1:length(A)]
    B(i) = power(A(i), 3);
end

% enable following to display context of vector B :
% disp(num2str(B));

% call following function to generate result. 
% if not required , disable following function !

C = zeros(size(A));

for i = 1:length(A)
    C(i) = pow2(A(i));
end

resultsLimiter(A,C);



% following function will return the integer of VECTOR B (resultVector) in range of VECTOR A (initializedVector)

% user is required to enter 2 number [start,end] to limit the range of VECTOR A

function resultsLimiter(initializedVector, resultVector)
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
            disp(num2str(resultNum));
        end
    end
end

