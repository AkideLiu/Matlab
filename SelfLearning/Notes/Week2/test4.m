% script create a vector of 5 random numbers and print the vector's elements 
vec = [];

for i = 1:5
    vec(i) = rand() * 100;
    disp(vec(i));
end

for i = 1:5
    vec(i) = randi(100);
    disp(vec(i));
end

disp(rng('shuffle'));