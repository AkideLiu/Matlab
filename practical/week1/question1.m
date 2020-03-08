clear;
clc;
fprintf("Please enter the following data to calculate the volume of a cuboid \n");
height = input("Enter height : ");
depth = input("Enter depth : ");
length = input("Enter length : ");

if (height <= 0) || (depth <= 0) || (length <= 0)
    error("error, input must be positive ");
    else
        volume = height * depth * length;
        fprintf("The volume of this cuboid is : %.2f \n" , volume);
end


