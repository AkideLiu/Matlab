clc;
clear;
close all;

u = [1,1,2];
v = [2,-3,3];
w = [-1,1,4];
 
% (w−2u)⋅(4w+v)
w-2*u
4*w+v
dot((w-2*u), (4*w+v))
% v⋅(w−u)+u⋅(v−w)
dot(v, w-u)
dot(u, v-w)