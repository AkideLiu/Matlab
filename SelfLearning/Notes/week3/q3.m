clc;
clear;
close all;

% generate a random permutation of a given word

% ask user for word

word = input('Eenter a word : ', 's');

% generate permutation 
permutations = perms(word);
choice = randi([1,length(permutations)]);
permutation = permutations(choice,:);

% print word
fprintf('%s \n', permutation);