% MATLAB Script: Generate 3rd and 5th Order Trajectories
% Inputs: 
%   - Initial and final conditions for position (x0, xf), velocity (v0, vf), and acceleration (a0, af).
%   - Total trajectory time (T).
% Outputs:
%   - Time vector (t), 3rd-order trajectory (traj3), and 5th-order trajectory (traj5).

% Define initial and final conditions
x0 = 0;     % Initial position (e.g., meters)
xf = 10;    % Final position (e.g., meters)
v0 = 0;     % Initial velocity (e.g., m/s)
vf = 0;     % Final velocity (e.g., m/s)
a0 = 0;     % Initial acceleration (e.g., m/s^2)
af = 0;     % Final acceleration (e.g., m/s^2)
T = 5;      % Total time for trajectory (e.g., seconds)

% Time vector
t = linspace(0, T, 100); % Discrete time points for evaluation

% 3rd-Order Polynomial Coefficients
A3 = [1, 0, 0, 0; 
      1, T, T^2, T^3; 
      0, 1, 0, 0; 
      0, 1, 2*T, 3*T^2];
B3 = [x0; xf; v0; vf];
coeff3 = A3 \ B3;

% 5th-Order Polynomial Coefficients
A5 = [1, 0, 0, 0, 0, 0; 
      1, T, T^2, T^3, T^4, T^5; 
      0, 1, 0, 0, 0, 0; 
      0, 1, 2*T, 3*T^2, 4*T^3, 5*T^4; 
      0, 0, 2, 0, 0, 0; 
      0, 0, 2, 6*T, 12*T^2, 20*T^3];
B5 = [x0; xf; v0; vf; a0; af];
coeff5 = A5 \ B5;

% Evaluate trajectories
traj3 = coeff3(1) + coeff3(2)*t + coeff3(3)*t.^2 + coeff3(4)*t.^3;
traj5 = coeff5(1) + coeff5(2)*t + coeff5(3)*t.^2 + coeff5(4)*t.^3 + coeff5(5)*t.^4 + coeff5(6)*t.^5;

% Plot results
figure;
subplot(2, 1, 1);
plot(t, traj3, 'r', 'LineWidth', 2); hold on;
title('3rd Order Trajectory');
xlabel('Time (s)');
ylabel('Position (m)');
grid on;

subplot(2, 1, 2);
plot(t, traj5, 'b', 'LineWidth', 2); hold on;
title('5th Order Trajectory');
xlabel('Time (s)');
ylabel('Position (m)');
grid on;

% Display coefficients
disp('3rd Order Coefficients:');
disp(coeff3);
disp('5th Order Coefficients:');
disp(coeff5);
