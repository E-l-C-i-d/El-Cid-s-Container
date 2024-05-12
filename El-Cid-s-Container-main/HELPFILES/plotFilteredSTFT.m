function plotFilteredSTFT(filtered_signal, Fs)
   

%This MATLAB function plotFilteredSTFT is designed to plot the Short-Time Fourier Transform (STFT) of a filtered signal.
%filtered_signal: This parameter represents the filtered signal for which the STFT will be computed and plotted.
%Fs: This parameter represents the sampling frequency of the filtered signal.
%The function performs the following task:
%Plot STFT of Filtered Signal: It plots the STFT of the filtered signal in a subplot.








% Plot STFT of filtered signal
    subplot(2,2,4);
    spectrogram(filtered_signal, hann(256), 128, 512, Fs, 'yaxis');
    title('STFT of Filtered Chirp Signal');
end
