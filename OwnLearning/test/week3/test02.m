clc; clear
% find the minimum element in a vector
A=[3 2 5 7 4 1];
minSoFar=0;% set min so far

% loop to find min
for i=[2:length(A)]

   %update the minimum so far
   if (A(i) < minSoFar)

       % update minSoFar
       minSoFar=A(i);
   end
end

% display the minimum
disp(minSoFar);