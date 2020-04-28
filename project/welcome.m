% Author : Akide Liu 
% Date : 12 / 04 / 2020 
% License and copyright notice: GNU General Public License v3.0 
% https://github.com/AkideLiu/Matlab/blob/master/LICENSE

% Description : This script is a welcome display and instructions.


function welcome()
    programInfo();
    showIntroduction;
    input('\n Awaiting your response ...','s');

    clc;
end

function programInfo()
    fprintf("\t |                                  |\n");
    fprintf("\t |            Minesweeper           |\n");
    fprintf("\t |          Version : 1.1.0         |\n");
    fprintf("\t |         Aothor : Akide Liu       |\n");
    fprintf("\t |                                  |\n");
    fprintf("\t |       Game loaded successfully   |\n");
    fprintf("\t |      Press any key to continue!  |\n");


end

function showIntroduction()
    fprintf(' \n Note : In this game, there are totally 10 mines, \n you can use the logic to select the SAFE location ,\n finally if there are just 10 un-selected blocks are \n all mines you WIN ,otherwise you lose. \n')

end