% Task 3 Professional

% Define parameters
Fs = 44100; % Sampling frequency
T = 2; % Duration of chirp signal (in seconds)
t = 0:1/Fs:T-1/Fs; % Time vector

% Create chirp signal
f0 = 20000; % Starting frequency (close to Nyquist frequency)
f1 = 22050; % Ending frequency (Nyquist frequency)
chirp_signal = chirp(t, f0, T, f1, 'linear', -90); % Create chirp signal

% Plot clean chirp signal with larger amplitude axis
figure;
subplot(2,2,1);
plot(t, chirp_signal);
title('Clean Chirp Signal');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-1.5, 1.5]); % Adjust y-axis limits for larger amplitude

% Define distortion functions
distortion1 = @(x) x.^3; % Example distortion function 1 (cubic distortion)
distortion2 = @(x) sin(x); % Example distortion function 2 (sine distortion)

% Apply distortion functions to chirp signal
distorted_signal1 = distortion1(chirp_signal);
distorted_signal2 = distortion2(chirp_signal);

% Combine distorted signals
combined_signal = distorted_signal1 + distorted_signal2;

% Normalize combined signal
combined_signal = combined_signal / max(abs(combined_signal));

% Plot STFT of clean and distorted chirp signals
subplot(2,2,2);
spectrogram(chirp_signal, hann(256), 128, 512, Fs, 'yaxis');
title('STFT of Clean Chirp Signal');

subplot(2,2,3);
spectrogram(combined_signal, hann(256), 128, 512, Fs, 'yaxis');
title('STFT of Distorted Chirp Signal');

% Notch filter design
frequencies = 22049; % Frequencies to attenuate
Q = 2; % Quality factor
gain = 1; % Attenuation in dB

% Design notch filter
wo = frequencies / (Fs/2);
bw = wo / Q;
[b, a] = iirnotch(wo, bw, gain);

% Apply notch filter to combined signal
filtered_signal = filter(b, a, combined_signal);


% Plot STFT of filtered signal
subplot(2,2,4);
spectrogram(filtered_signal, hann(256), 128, 512, Fs, 'yaxis');
title('STFT of Filtered Chirp Signal');

% Play filtered signal
sound(filtered_signal, Fs);


