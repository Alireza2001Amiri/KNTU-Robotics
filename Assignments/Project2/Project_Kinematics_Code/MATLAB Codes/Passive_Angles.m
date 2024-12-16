clear;
clc;

%% Define Variables
syms theta1 theta2 theta3 L1 L2 L3 L4 L5;
syms theta_2p1 theta_2p2
L4=L2; L3=L1;

%% DH Table (Left loop)
T_A=DH(0,-pi/2,0,0); T_A=Matrix_Vpa_Numeric(T_A,4,4);
T_B=DH(0,+pi/2,0,theta1);T_B=Matrix_Vpa(T_B,4,4);
T_C=DH(L1,0,0,theta3);

T_Right=T_A*T_B*T_C;
p_Right=T_Right(1:3,4)

%% DH Table (Right loop)
T_a=DH(0,-pi/2,0,0); T_a=Matrix_Vpa_Numeric(T_a,4,4);
T_b=DH(0,+pi/2,0,theta1);T_b=Matrix_Vpa(T_b,4,4);
T_c=DH(L2,0,0,theta2);
T_d=DH(L3,0,0,theta_2p1);
T_e=DH(L4,0,0,theta_2p2);

T_Left=T_a*T_b*simplify(T_c*T_d*T_e);
p_Left=simplify(T_Left(1:3,4))
