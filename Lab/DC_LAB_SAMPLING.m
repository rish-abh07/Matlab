% signal parameters
Fs = 1000;       % Sampling frequency (Hz)
T = 1;           % Duration of the signal (seconds)
t = 0:1/Fs:T;    % Time vector

% time-domain signal 
frequency = 5;   % Frequency of the sine wave (Hz)
amplitude = 1;   % Amplitude of the sine wave
signal = amplitude * sin(2 * pi * frequency * t);

% time-domain signal
subplot(2, 1, 1);
plot(t, signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Signal');

% Sample the signal
Fs_new = 100;    % New sampling frequency (Hz)
t_new = 0:1/Fs_new:T;  % New time vector
sampled_signal = interp1(t, signal, t_new);

% Plot the sampled signal
subplot(2, 1, 2);
stem(t_new, sampled_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sampled Signal');

% Compute the Fourier transform of the sampled signal using FFT
N = length(sampled_signal);  % Number of samples
frequencies = (0:N-1) * (Fs_new / N);  % Frequency values
fourier_transform = fft(sampled_signal, N);

% Calculate the magnitude spectrum of the Fourier transform
magnitude_spectrum = abs(fourier_transform);

% Plot the magnitude spectrum
figure;
stem(frequencies, magnitude_spectrum);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Domain');

% Adjust the plot for better visualization
xlim([0, Fs_new ]);
