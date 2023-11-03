% Define the input sequence (x[n])
% Define the time vector
t = linspace(0, 2*pi, 15); % Generate 100 points from 0 to 2*pi

% Create an array with the cosine function
x = cos(t);
N = length(x);


% Initialize arrays for the real and imaginary parts of the DFT
X_real = zeros(1, N);
X_imag = zeros(1, N);

% Compute the DFT
for k = 0:N-1
    for n = 0:N-1
        X_real(k+1) = X_real(k+1) + x(n+1) * cos(2 * pi * n * k / N);
        X_imag(k+1) = X_imag(k+1) - x(n+1) * sin(2 * pi * n * k / N);
    end
end

% Calculate the magnitude and phase of the DFT
X_magnitude = sqrt(X_real.^2 + X_imag.^2);
X_phase = atan2(X_imag, X_real);

% Plot the magnitude and phase of the DFT
k = 0:N-1;
subplot(2, 1, 1);
stem(k, X_magnitude);
xlabel('k');
ylabel('Magnitude');
title('Magnitude of DFT');

subplot(2, 1, 2);
stem(k, X_phase);
xlabel('k');
ylabel('Phase (radians)');
title('Phase of DFT');
