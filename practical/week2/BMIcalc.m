clc;
clear;
% clear console   

%   BMI=weight/height^2
%   this program will progress calculation of BMI figure  which prompt user's input including weight and height and print out formated BMI result on the console


% Due to 3 tests are required, use for statement to make core code runs 3 travels.
for i = 1:3
    % request user's input 
    weight = input("Enter your weight in kgs : ");
    height = input("Enter your height in m : ");

    % calculate BMI
    BMI = weight / sqrt(height);

    % display output 
    fprintf('Your BMI is : %.2f \n', BMI ); 
end

