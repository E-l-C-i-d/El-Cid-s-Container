function Task_3
    Fs = 44100; % Sampling frequency
    T = 5; % Duration of signal in seconds
    
    % Generate time vector
    t = generateTimeVector(Fs, T);
    
    % Create chirp signal
    chirp_signal = generateChirpSignal(t, Fs, T);
    
    % Plot clean chirp signal
    plotCleanChirpSignal(t, chirp_signal);
    
    % Apply distortion functions
    distorted_signal1 = applyDistortion1(chirp_signal);
    distorted_signal2 = applyDistortion2(chirp_signal);
    
    % Combine distorted signals
    combined_signal = combineDistortedSignals(distorted_signal1, distorted_signal2);
    
    % Normalise combined signal
    normalised_signal = normaliseSignal(combined_signal);
    
    % Plot STFT of clean and distorted chirp signals
    plotSTFT(chirp_signal, normalised_signal, Fs);
    
    % Apply notch filter to combined signal
    filtered_signal = applyNotchFilter(normalised_signal, Fs);
    
    % Plot STFT of filtered signal
    plotFilteredSTFT(filtered_signal, Fs);
    
    % Play sound
    playSound(filtered_signal, Fs);
end










