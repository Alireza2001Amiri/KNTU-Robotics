% Clear workspace and command window
clear;
clc;

% Define symbolic variables
syms phi psi d

% Structure parameters
l_0 = 0.006;
l_1 = 0.1820;
l_3 = 0.05;
l_5 = 0.1150;
l_2 = 0.07;
l_7 = 0.0342;
theta_value = 42 * (pi / 180); % Convert degrees to radians
alpha_value = 50 * (pi / 180); % Convert degrees to radians

% Define symbolic position of the end effector
P_sym = [
    sin(theta_value) * cos(psi + alpha_value) * d + cos(theta_value) * cos(phi) * sin(psi + alpha_value) * d + sin(theta_value) * (l_1 + l_3 + l_5);
    sin(phi) * sin(psi + alpha_value) * d;
    cos(theta_value) * cos(psi + alpha_value) * d - cos(phi) * sin(theta_value) * sin(psi + alpha_value) * d + cos(theta_value) * (l_1 + l_3 + l_5)
];

% Define symbolic rotation matrix
R_sym = [
    cos(theta_value) * cos(phi) * cos(psi + alpha_value) - sin(theta_value) * sin(psi + alpha_value), -cos(theta_value) * sin(phi), cos(theta_value) * cos(phi) * sin(psi + alpha_value) + sin(theta_value) * cos(psi + alpha_value);
    sin(phi) * cos(psi + alpha_value), cos(phi), sin(phi) * sin(psi + alpha_value);
    -sin(theta_value) * cos(phi) * cos(psi + alpha_value) - cos(theta_value) * sin(psi + alpha_value), -sin(theta_value) * sin(phi), -sin(theta_value) * cos(phi) * sin(psi + alpha_value) + cos(theta_value) * cos(psi + alpha_value)
];

% Display symbolic results
disp('Symbolic Position:');
disp(P_sym);
disp('Symbolic Rotation Matrix:');
disp(R_sym);

% Define numerical values for phi, psi, and d
phi_num = pi / 4; % Example value for phi (radians)
psi_num = pi / 6; % Example value for psi (radians)
d_num = 0.1;      % Example value for d

% Substitute numerical values into symbolic expressions
P_eval = subs(P_sym, [phi, psi, d], [phi_num, psi_num, d_num]);
R_eval = subs(R_sym, [phi, psi, d], [phi_num, psi_num, d_num]);

% Display numerical results
disp('Numerical Position of the End Effector:');
disp(double(P_eval));
disp('Numerical Rotation Matrix of the End Effector:');
disp(double(R_eval));
