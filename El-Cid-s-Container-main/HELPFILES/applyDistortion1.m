function distorted_signal1 = applyDistortion1(chirp_signal)

%This MATLAB function applyDistortion1 applies a cubic distortion to the input chirp signal.
%chirp_signal: This parameter represents the input chirp signal to which the distortion will be applied.
%The function performs the following task: Apply Distortion: 
%It applies the cubic distortion function to the input chirp signal. This distortion function is represented by raising each sample of the chirp signal to the power of 3.
%function distorted_signal1 = applyDistortion1(chirp_signal): This line defines a MATLAB function named applyDistortion1 that takes one input argument chirp_signal and returns the distorted signal distorted_signal1.
%distorted_signal1 = chirp_signal .^ 3;: This applies the cubic distortion to the input chirp signal by raising each sample of the chirp signal to the power of 3. The resulting distorted signal is stored in the variable distorted_signal1.








% Apply distortion function 1 (cubic distortion)
    distorted_signal1 = chirp_signal .^ 3;
end