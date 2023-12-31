% 3. auto correlation
clc;
close all;
clear all;
x = [1,2,3,4,5];
y = [4,1,5,2,6];
subplot(3,1,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('input signal');
subplot(3,1,2);
stem(y);
xlabel('n');
ylabel('y(n)');
title('input signal');
z=xcorr(x,x);
subplot(3,1,3);
stem(z);
xlabel('n');
ylabel('z(n)');
title('resultant signal signal');