function plotCleanChirpSignal(t, chirp_signal)
    
%This MATLAB function plotCleanChirpSignal is designed to plot a clean chirp signal with a larger amplitude axis.
%t: This parameter is the time vector corresponding to the chirp signal. It represents the time instances at which the signal samples were taken.
%chirp_signal: This parameter represents the clean chirp signal that you want to plot.
%The function performs the following tasks:
%Create a Plot: It creates a new figure for the plot and divides it into a 2x2 grid of subplots. The plot of the clean chirp signal will be placed in the first subplot.
%Plot the Signal: It plots the clean chirp signal chirp_signal against the time vector t.
%Set Title and Labels: It sets the title of the plot as "Clean Chirp Signal" and labels the x-axis as "Time (s)" and the y-axis as "Amplitude".
%Adjust Y-Axis Limits: It adjusts the y-axis limits to [-1.5, 1.5]. This step ensures that the full range of the signal is visible in the plot, even if the signal amplitudes exceed this range.

















% Plot clean chirp signal with larger amplitude axis
    figure; % Create a new figure
    subplot(2,2,1); % Divide the figure into a 2x2 grid and select the first subplot
    plot(t, chirp_signal); % Plot the clean chirp signal
    title('Clean Chirp Signal'); % Set the title of the plot
    xlabel('Time (s)'); % Set the label for the x-axis
    ylabel('Amplitude'); % Set the label for the y-axis
    ylim([-1.5, 1.5]); % Adjust y-axis limits for larger amplitude
end