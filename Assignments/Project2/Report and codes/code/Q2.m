% Define symbolic variables
syms t l1 l5 real           % Time and constants
syms theta1(t) theta2(t) theta3(t) % Angles as functions of time

% Define the actual trigonometric terms
S1 = sin(theta1);
C1 = cos(theta1);
S2 = sin(theta2);
C2 = cos(theta2);
S3 = sin(theta3);
C3 = cos(theta3);

% Define the given q1, q2, q3
q1 = (pi/6)*sin(t);
q2 = (pi/6)*sin(t) + pi/4;
q3 = (pi/8)*sin(t) + (3*pi/4);

% Create q as a vector and compute its time derivative
q = [q1; q2; q3];
q_dot = diff(q, t);  % True time derivative of q

% Define the Jacobian matrix J with actual sine and cosine terms
J = [ -sin(theta1)*(l1*cos(theta3) - l5*cos(theta2)), l5*cos(theta1)*sin(theta2), -l1*cos(theta1)*sin(theta3);
       0,                                              -l5*cos(theta2),            l1*cos(theta3);
      -cos(theta1)*(l1*cos(theta3) - l5*cos(theta2)), -l5*sin(theta1)*sin(theta2), l1*sin(theta1)*sin(theta3);
       sin(theta1),                                   0,                           0;
       1,                                            0,                           0;
       0,                                            cos(theta1),                 0];

% Multiply Jacobian matrix J by q_dot
result = simplify(J * q_dot);

% Display the results
disp('Time derivative of q (q_dot):');
disp(q_dot);
disp('Result of J * q_dot:');
disp(result);
