function normalised_signal = normaliseSignal(signal)
%This MATLAB function normaliseSignal normalises the input signal.
%signal: This parameter represents the input signal that you want to normalise.
%The function performs the following task:
%Normalise Signal: It divides each element of the input signal by the maximum absolute value of the signal. This operation ensures that the maximum absolute value of the normalised signal becomes 1.   





% Normalise signal
    normalised_signal = signal / max(abs(signal));
end