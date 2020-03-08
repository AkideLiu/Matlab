clc; clear;
% product = 1 ;
% for i = [1:3]
%     product = product * i + 1;
% end

% product

% pathA = [5,6,2];
% pathB = [1,9,2];
% difference = [1,9,2];

% for i = [1:3];
%     difference(i) = pathB(i) - pathA(i);
% end
% difference


% this program...
% get input
name = input('Enter a name: ', 's');
birthYear = input('Enter birth year: ');
currentDate = datetime('now');
currentYear = currentDate.Year;
% age
age = currentYear - birthYear;
% output
fprintf('%s is %d year old \n', name , age);

