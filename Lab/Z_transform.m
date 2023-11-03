%% z-transform
clc;
close all;
clear all;
x=[1 2 3 4];
l=length(x);
X=0;
z=sym('z');
for i=0:l-1
 X=X+x(i+1)*z^(-i);
end
disp('displaying output');
disp(X);
z=ztrans(X);
syms n
f=sin(n);
r=ztrans(f);
disp('z-transform using function');
disp(r);
syms m n
f=exp(m+n);
rr=ztrans(f);
disp('z-transform using function');
disp(rr);
%% Circular time shif property
% if DFT(x(n))=X(k) then
% DFT(x(n-n0))=e^(-j*2*pi*k*n0/N) X(k)
% ZT(x(n))=z^-k X(z)
clc;
close all;
clear all;
x=[0 1 3 5 7 9];
N=length(x)-1; % total samples we plot
n=0:N;
y=circshift(x,[0 5]);
subplot(3,2,1);
stem(n,x);
title('original signal');
hold on;
subplot(3,2,2);
stem(n,y);
title('shifted signal');
%finding DT using FFT algorithm
X1=fft(x);
Y1=fft(y);
%plotting phase of two signals
subplot(3,2,3);plot(n,angle(X1));title('phase X1');
subplot(3,2,4);plot(n,angle(Y1));title('phase X2');
%plotting magnitude of these two functions
subplot(3,2,5);plot(n,abs(X1));title('magnitude X1');
hold on;
subplot(3,2,6);plot(n,abs(Y1));title('magnitude Y1');


%% z transform and its inverse
clc;
close all;
clear all;
syms n;
x1=(1/4)^n;
ztrans(x1)
x2=(2*(2^n))+(4*(1/2)^n);
ztrans(x2)
syms z;
X1=(4*z)/(4*z-1);
iztrans(X1)
X2=((2*z)/(z-2))+((4*z)/(z-1/2));
iztrans(x2)
n=[1 0];
d=[1 -0.5 -0.32];
h=tf(n,d,1)
figure(1);
zplane(n,d);
title('pole zero plot')
figure(2);
impz(n,d);
figure(3);
freqz(n,d);
title('frequency response');
%% Convolution and deconvolution using z-transform
clc;
close all;
clear all;
syms n z
x1n=0.2^n;
x2n=0.3^n;
x1z=ztrans(x1n);
x2z=ztrans(x2n);
x3z=x1z*x2z;
con12=iztrans(x3z);
disp('convolution x1(n)*x2(n)=')
simplify(con12)
decon_x1z=x3z/x2z;
decon_x1n=iztrans(decon_x1z);
disp('the signal x1(n) obtained after deconvolution is')
simplify(decon_x1n)
decon_x2z=x3z/x1z;
decon_x2n=iztrans(decon_x2z);
disp('the signal x2(n) obtained after deconvolution is')
simplify(decon_x2n)
