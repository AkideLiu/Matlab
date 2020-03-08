clear;
clc;
% Australia average water daily used per person per day is 150 litre.
% https://www.rwcc.nsw.gov.au/save-water/average-water-use
% Australia average household size in 2011 is 2.6, the most recent and reliable data.
% https://aifs.gov.au/facts-and-figures/households-australia/households-australia-source-data


% litre to kilolitre


dailyWaterUsagePH = 900 / 1000;

householdSize = 2.6;

peopelDailyUsage = dailyWaterUsagePH / householdSize;

population = 1.3;

% by 1 million because requested data input is in unit of million 

currentTotalUsage = population * peopelDailyUsage * 1000000;

desalinationPlant =  300000;

% by 100 convert digital to percentage

percentageOfDU = desalinationPlant /  currentTotalUsage * 100;

fprintf('The percentage of daily for the city of Adelaie is : %.1f \n ', percentageOfDU );
disp('In this case, desalination can cover 100% of the daily usage ');



