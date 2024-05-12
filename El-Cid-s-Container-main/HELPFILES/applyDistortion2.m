function distorted_signal2 = applyDistortion2(chirp_signal)
    
%This MATLAB function applyDistortion2 applies a sine distortion to the input chirp signal.
%chirp_signal: This parameter represents the input chirp signal to which the distortion will be applied.
%The function performs the following task:
%Apply Distortion: It applies the sine distortion function to the input chirp signal. This distortion function is represented by taking the sine of each sample of the chirp signal.
%function distorted_signal2 = applyDistortion2(chirp_signal): This line defines a MATLAB function named applyDistortion2 that takes one input argument chirp_signal and returns the distorted signal distorted_signal2.
%distorted_signal2 = sin(chirp_signal);: This applies the sine distortion to the input chirp signal by taking the sine of each sample of the chirp signal. The resulting distorted signal is stored in the variable distorted_signal2.








% Apply distortion function 2 (sine distortion)
    distorted_signal2 = sin(chirp_signal);
end