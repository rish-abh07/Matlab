% Define the discrete signal x[n]
n = 0:15;
x = cos(0.2 * pi * n) + 0.5 * cos(0.5 * pi * n);

% Compute the Discrete Fourier Transform (DFT)
X = fft(x);

% Calculate the frequency axis for plotting
fs = 1; % Sampling frequency (assumed to be 1 for simplicity)
frequencies = (0:length(X) - 1) * (fs / length(X));

% Plot the magnitude and phase of the DFT
subplot(2, 1, 1);
stem(frequencies, abs(X));
title('Magnitude of DFT');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');

subplot(2, 1, 2);
stem(frequencies, angle(X));
title('Phase of DFT');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');