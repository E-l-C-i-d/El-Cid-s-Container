function filtered_signal = applyNotchFilter(signal, Fs)
    
%This MATLAB function applyNotchFilter designs and applies a notch filter to the input signal.
%signal: This parameter represents the input signal to which the notch filter will be applied.
%Fs: This parameter represents the sampling frequency of the signal.
%The function performs the following tasks:
%Notch Filter Design: It designs a notch filter using the specified parameters: frequencies, Q, and gain.
%Apply Notch Filter: It applies the designed notch filter to the input signal using the filter function.
















% Notch filter design
    frequencies = 22049; % Frequencies to attenuate
    Q = 2; % Quality factor
    gain = 1; % Attenuation in dB

    wo = frequencies / (Fs/2);
    bw = wo / Q;
    [b, a] = iirnotch(wo, bw, gain);

    % Apply notch filter to signal
    filtered_signal = filter(b, a, signal);
end