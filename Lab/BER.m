N=10^4 
rand('state',200);
randn('state',200);
ip = rand(1,N)>0.5;
ipD = mod(filter(1,[1 -1],ip),2);
s = 2* ipD -1;
n = 1/sqrt(2)*[randn(1,N) + j*randn(1,N)];
Eb_N0_