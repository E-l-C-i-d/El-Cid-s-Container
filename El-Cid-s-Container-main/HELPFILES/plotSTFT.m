function plotSTFT(chirp_signal, combined_signal, Fs)
   
%This MATLAB function plotSTFT is designed to plot the Short-Time Fourier Transform (STFT) of both the clean chirp signal and the combined (distorted) chirp signal.
%chirp_signal: This parameter represents the clean chirp signal.
%combined_signal: This parameter represents the combined (distorted) chirp signal.
%Fs: This parameter represents the sampling frequency of the signals.
%The function performs the following tasks:
%Plot STFT of Clean Chirp Signal: It plots the STFT of the clean chirp signal in the upper subplot.
%Plot STFT of Distorted Chirp Signal: It plots the STFT of the combined (distorted) chirp signal in the lower subplot.
















% Plot STFT of clean and distorted chirp signals
    subplot(2,2,2);
    spectrogram(chirp_signal, hann(256), 128, 512, Fs, 'yaxis');
    title('STFT of Clean Chirp Signal');
    
    subplot(2,2,3);
    spectrogram(combined_signal, hann(256), 128, 512, Fs, 'yaxis');
    title('STFT of Distorted Chirp Signal');
end
