%% DFT
clear;
x1 = input("Enter the input sequence: ");
N = length(x1);
x2 = zeros(N, N);

for k = 0:N-1
    for n = 0:N-1
        p = exp(-1i * 2 * pi * n * k / N);
        x2(k+1, n+1) = p;
    end
end

Y = x1 * x2;

k = 0:N-1;
subplot(2, 1, 1);
stem(k, abs(Y));
xlabel('k');
ylabel('amplitude');
subplot(2, 1, 2);
stem(k, angle(Y));
xlabel('k');
ylabel('phase');

%% IDFT
x1 = input("Enter the input sequence: ");
N = length(x1);
x2 = zeros(N, N);

for k = 0:N-1
    for n = 0:N-1
        p = exp(-1i * 2 * pi * n * k / N);
        x2(k+1, n+1) = p;
    end
end

Y = x1 * x2;

k = 0:N-1;
subplot(2, 1, 1);
stem(k, abs(Y));
xlabel('k');
ylabel('amplitude');
subplot(2, 1, 2);
stem(k, angle(Y));
xlabel('k');
ylabel('phase');

%% FFT and IFFT
clc;
clear;
close all;
x = input('Enter the sequence: ');
N = length(x);
xK = fft(x, N);
xn = ifft(xK);
subplot(3, 1, 1);
stem(abs(xK));
title('Magnitude of Fourier Spectrum');
xlabel('frequency');
ylabel('Magnitude');
subplot(3, 1, 2);
stem(angle(xK));
title('Phase of Fourier Spectrum');
xlabel('frequency');
ylabel('phase');
subplot(3, 1, 3);
stem(xn);
title('Inverse FFT');
xlabel('time');
ylabel('amplitude');
