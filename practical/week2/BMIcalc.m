clc;
clear;

%      BMI=weight/height^2

for i = 1:3
    weight = input("Enter your weight in kgs : ");
    height = input("Enter your height in m : ");

    BMI = weight / sqrt(height);
    fprintf('Your BMI is : %.2f \n', BMI ); 
end

