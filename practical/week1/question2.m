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

population = input("Enter the population in Unit of million! : ");

% by 1 million because requested data input is in unit of million 

result = population * peopelDailyUsage * 1000000;

if result > 0
    fprintf("The total daily water usage of that city in Unit of KL: %f \n", result);
    else
        error('input error')
end



