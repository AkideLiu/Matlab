clc;
clear;
close all;

% Author : Akide Liu 
% Date : 20 / 03 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script is that Given an existing matrix A and a new matrix B, if we want to concatenate A and B horizontally (ie new matrix C has the values of A, followed by the values of B under the values of A).  Fill in the missing character in the following statement to create C.


A = [1 2 3; 4 5 6 ; 7 8 9];

B = [11 12 13; 14 15 16 ; 17 18 19];


C = [A;B] 

% output :

% C =

%      1     2     3
%      4     5     6
%      7     8     9
%     11    12    13
%     14    15    16
%     17    18    19


