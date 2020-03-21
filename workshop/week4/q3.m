clc;
clear;
close all;

% Author : Akide Liu 
% Date : 21 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script calculate the running average of a vector of numbers stored in a vector A and store these averages in vector B.

% define vector A with random generation in range of (0 , 1)
A = rand(1,100);
% A = [ 3 5 2 4 1 ] ;

% initialization of vector B;
B = [];

% outer loop - to progress all elements in vector A;
for i = 1:length(A)
    % define sum 
    sum  = 0;
    % inner loop - caculate running sum.
    for j = 1:i
        sum = sum + A(j);
    end
    % caculate running average
    avg = sum / i;

    % digits(d) sets the precision used by vpa to d significant decimal digits. The default is 32 digits.
    digits(2);

    % vpa(x) uses variable-precision floating-point arithmetic (VPA) to evaluate each element of the symbolic input x to at least d significant digits, where d is the value of the digits function. The default value of digits is 32.

    % use vpa function to modify required float point in 1 decimal place 
    
    avg = (vpa(avg));

    % append average into vector B
    % B(i) = avg;
    B = [B avg];
end


% display result 
% disp(B);

% plot vetor B;
close all;
plot(B);

resultGenerater(A,B);


