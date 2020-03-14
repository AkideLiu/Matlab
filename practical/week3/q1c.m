clc;
clear;
close all;

% this program will plot command to plot both B and C on the same graph..
% Notice : configure line 24 and 35 can affect outputs,
%          configure line 13 can change range of VECTOR A (initial VECTOR);

% define Vector A
A = [-10:0.5:10];

% test case [-100 - 100]
% A = [-100:0.5:100];


% create empty vector B , as the same length of vector A
B = zeros(size(A));

for i = [1:length(A)]
    B(i) = power(A(i), 3);
end

C = zeros(size(A));

for i = 1:length(A)
    C(i) = pow2(A(i));
end

% enable following to display context of vector C :
% disp(num2str(C));

% call following function to generate result. 
% if not required , disable following function !

% resultGenerater(A,C);

close all;

% displays the major grid lines for the current axes or chart returned by the gca command. Major grid lines extend from each tick mark.
grid on;  

%  toggles the visibility of the minor grid lines. Minor grid lines lie between the tick marks. Not all types of charts support minor grid lines.
grid minor;

hold on; % display plots on the same window for now

% plot a draw use VECTOR A 's value as X-asis
plot(A,B);
plot(A,C);

% add label
legend({'B','C'},'Location','southwest')

hold off; % turn off plotting on the same window. 

