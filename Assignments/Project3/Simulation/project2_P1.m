% Define the time vector t with 4351 points from 0 to 10
t = linspace(0, 10, 4351);

% Define the functions q_1, q_2, and q_3
q_1 = 30 * sin(t);
q_2 = 30 * sin(t) + 45;
q_3 = 22.5 * sin(t) + 135;

% Plot the functions
figure; % Create a new figure window
hold on; % Hold the plot so that multiple functions can be plotted on the same graph

plot(t, q_1, 'r', 'LineWidth', 2); % Plot q_1 in red
plot(t, q_2, 'g', 'LineWidth', 2); % Plot q_2 in green
plot(t, q_3, 'b', 'LineWidth', 2); % Plot q_3 in blue

% Add labels and title
xlabel('Time (t)');
ylabel('q(t)');
title('Plot of q_1, q_2, and q_3');

% Add a legend
legend('q_1', 'q_2', 'q_3');

% Display grid
grid on;

hold off; % Release the hold on the plot
