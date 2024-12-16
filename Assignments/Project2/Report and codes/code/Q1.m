% Define symbolic variables
syms theta1(t) theta2(t)  % Declare theta1 and theta2 as functions of time
syms dtheta1 dtheta2 real  % Declare the time derivatives of theta1 and theta2

% Define the rotation matrix R
R = [ -cos(theta1)*cos(theta2), cos(theta1)*sin(theta2), sin(theta1);
      -sin(theta2),            -cos(theta2),           0;
       cos(theta2)*sin(theta1), -sin(theta1)*sin(theta2), cos(theta1)];

% Differentiate the matrix with respect to time
R_dot = diff(R, t);

% Simplify the result
R_dot = simplify(R_dot);

% Display the result
disp('Time derivative of R:');
disp(R_dot);

%%

R_transpose = R.'

omega_cross = simplify(R_dot*R_transpose)

%%


% Define the time derivatives
dtheta1 = diff(theta1, t);
dtheta2 = diff(theta2, t);

% Define omega_cross matrix
omega_cross = [
    0, -cos(theta1) * dtheta2, dtheta1;
    cos(theta1) * dtheta2, 0, -sin(theta1) * dtheta2;
    -dtheta1, sin(theta1) * dtheta2, 0
];

%%
syms theta1 theta2 theta3 l1 l5 % Define symbolic variables

% Define the vector p
p = [cos(theta1)*(l1*cos(theta3) - l5*cos(theta2));
     l1*sin(theta3) - l5*sin(theta2);
     -sin(theta1)*(l1*cos(theta3) - l5*cos(theta2))];

% Calculate partial derivatives
dp_dtheta1 = diff(p, theta1); % Partial derivative with respect to theta1
dp_dtheta2 = diff(p, theta2); % Partial derivative with respect to theta2
dp_dtheta3 = diff(p, theta3); % Partial derivative with respect to theta3

% Combine the derivatives into a 3x3 matrix
Jacobian_matrix = [dp_dtheta1, dp_dtheta2, dp_dtheta3];

% Display the Jacobian matrix
disp('Jacobian matrix (3x3) of partial derivatives:');
disp(Jacobian_matrix);
