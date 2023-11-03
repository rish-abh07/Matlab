%Example Project
clc;close;clear all;
x = linspace(0,5);
y = ((-(x-3).^2)) + 10;

plot(x,y,'.')
[MaxVal, I] = max(y)

x_value = x(I)

%to get the value of y at x = 20.7
y = @(x) ((-(x-3).^2)) + 10 ;

y(20.7)
