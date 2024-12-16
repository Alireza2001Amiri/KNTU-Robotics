clear;
clc;

%% Robot Parameters
a2=sqrt(2);
a3=1;

%% Trajectory (optional)
d1=0.3;
theta2=pi/4;
theta3=3*pi/5;

%% Forward kinematics
X=[d1 + a3*cos(theta2 + theta3) + a2*cos(theta2);
      + a3*sin(theta2 + theta3) + a2*sin(theta2);
                                              0];
theta_e=theta2 + theta3;

%% Inverse Formultion
x_e=X(1); y_e=X(2);
x=x_e-a3*cos(theta_e);
y=y_e-a3*sin(theta_e);

D1=x-sqrt(a2^2-y^2);
Theta2=atan2(y,x-d1);
Theta3=theta_e-Theta2;

%% Verification
e_1=d1-D1
e_2=Theta2-theta2
e_3=Theta3-theta3