clc; clear;

for i = 1:1000
    myThrow = round(rand()*9.0)+1;  % the plus 1 stops the result being in the range  0..5 
    if (myThrow > 10 || myThrow < 1)
        error(myThrow);
    end
end

disp('no problem');
