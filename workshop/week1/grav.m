% Calculate gravitational attraction
% Akide Liu, 3/3/20

m1 = 75;
m2 = 6 * 10^24;
G = 6.67*10^(-11);
r = 6400000;
% Calculate the force
F = G * m1 * m2 / r^2;
% Outout result
disp(['The gravitational force is ' , ...
    num2str(F),' Newtons.']);
fprintf("The gravitational force is %.2f Newtons %.3f \n Newtons ", F , F);
