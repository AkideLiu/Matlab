clc;
clear;
close all;

% Author : Akide Liu 
% Date : 06 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script ...


if ~(clearDrawing() && saveProgramState())

    disp('Warning: could not save program');

end


function output = clearDrawing()
    output = true;
end

function output = saveProgramState()
    output = false;
end