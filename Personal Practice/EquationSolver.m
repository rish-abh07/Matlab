%Example Project
clc;close;clear all;
x = linspace(0,5);
y = ((-(x-3).^2)) + 10;

plot(x,y,'.')
max(y)