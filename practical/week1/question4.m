clc;
clear;

% the total cost = population * per person per car * (every person drivers a car 10km per day / full tank capacity 500km ) * full tank fuel $100

population = input("Enter the population in Unit of million! : ");

if population <= 0
    error('input error')
end


% every people daily drive = 10 km
% full tank capacity = 500km
% full tank fuel  = $100
dailyCost = 10 / 500 * 100;

% by 1 million because requested data input is in unit of million 


totalCost = population * dailyCost * 1000000;

fprintf("Daily cost of transport for those people driving a car $%.2f \n", totalCost)