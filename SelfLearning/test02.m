clc;
clear;

long = 6.510;
wide = 4.23;
errorNum = 0.005;

uncertainty = ((long + errorNum) * (wide + errorNum) - (long - errorNum) * (wide - errorNum) ) ;

disp(uncertainty / (long * wide) / 2);