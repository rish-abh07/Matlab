clear all;
clc;
x1 = input("Enter the first sequence");
y = input ("Enter the second sequence");
N1 = length(x1);
N2 = length(y);

N=max(N1,N2);

if(N2>N1)
    x1_padded = [x1,zeros(1,N-N1)];
    y_padded = y;
elseif(N1 == N2)
     x1_padded = x1;
     y_padded = y;
else 
    x1_padded = x1;
    y_padded = [y,zeros(1,N-N2)];
end

ConArray = zeros(1,N);
for m=0:N-1
    x3(m+1)=0;
    for n=0:N-1
        j=mod(n-m,N)
        x3(m+1) = x3(m+1) + x1_padded(n+1) * y_padded(j+1);
    end
end


subplot(4,1,1)
stem(x1);
title('First Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
subplot(4,1,2)
stem(y);
title('Second Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
subplot(4,1,3)
stem(x3);
title('Circular Convolution Using')
xlabel('Samples');
ylabel('Amplitude');

    
