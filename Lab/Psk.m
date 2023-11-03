clc;
close all;
clear all;
n= input ('Enter n value for n bit-PCM ytem : ');
n1 = input ('Enter number of samples in a period : ');
L=2^n;

x=0:2*pi/n1:4*pi;
s=8*sin(x);
subplot(3,1,1);
plot(s);
title('Analog signal');
ylabel('Amplitude ---->');
xlabel('Time---->');
subplot(3,1,2);
stem(s);grid on ; title ('Sampled Signal');
ylabel('Amplitude--->');xlabel('Time --->');

%Qunatization Proess
vmax = 0 ;
vmin = -vmx;
vmin= -vmax;
del=( vmax-vmin) /I;
part=vmin:del:vmax;
code=vmm6tgin- (del/2) :del:vmaxt (del/2) 