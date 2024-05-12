function chirp_signal = generateChirpSignal(t, Fs, T) 
% break down of the function `generateChirpSignal` step by step:
%1. **Input Parameters**:
  % - `t`: Time vector representing the time points at which the signal is sampled.
  % - `Fs`: Sampling frequency, i.e., the number of samples per second.
  % - `T`: Duration of the chirp signal in seconds.
%2. **Starting and Ending Frequencies**:
  % - `f0 = 20000`: This is the starting frequency of the chirp signal. It's set close to the Nyquist frequency, which is half of the sampling frequency (Fs/2), to ensure that the signal covers a wide frequency range.
  % - `f1 = 22050`: This is the ending frequency of the chirp signal. It's set to the Nyquist frequency, which is the maximum frequency that can be represented given the sampling frequency Fs.
%3. **Generating the Chirp Signal**:
  % - `chirp_signal = chirp(t, f0, T, f1, 'linear', -90)`: This line generates the chirp signal using the MATLAB function `chirp`.
  % - `t`: The time vector.
  % - `f0`: Starting frequency of the chirp.
  % - `T`: Duration of the chirp in seconds.
  % - `f1`: Ending frequency of the chirp.
  % - `'linear'`: This parameter specifies that the frequency sweep will be linear, meaning the frequency increases linearly with time.
  % - `-90`: This parameter specifies the initial phase of the chirp in degrees.
%4. **Return Value**:
  % - The generated chirp signal is returned as `chirp_signal`.
%So, in summary, this function generates a linear chirp signal that starts at a frequency close to the Nyquist frequency (`f0`), sweeps linearly to the Nyquist frequency (`f1`), over a specified duration (`T`), and with an initial phase of -90 degrees.



% Create chirp signal
    f0 = 20000; % Starting frequency (close to Nyquist frequency)
    f1 = 22050; % Ending frequency (Nyquist frequency)
    chirp_signal = chirp(t, f0, T, f1, 'linear', -90); % Create chirp signal
end