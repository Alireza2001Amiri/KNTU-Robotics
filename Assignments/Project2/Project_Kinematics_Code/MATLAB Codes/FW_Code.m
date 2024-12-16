clear;
clc;

%%

syms theta1 theta2 theta3 L1 L4 L5;
syms THETA THETA2 THETA3
L2=L4; L3=L1;

%% Parallel Loop Feature
theta2_p1=theta3-theta2;
theta2_p2=pi-theta2_p1;
%% DH Table
T1=DH(0,0,0,0); T1=Matrix_Vpa_Numeric(T1,4,4);
T2=DH(0,+pi/2,0,theta1);T2=Matrix_Vpa(T2,4,4);
T3=DH(L1,0,0,theta3);
T4=DH(L5,0,0,theta2_p2);
T_Final=T1*T2*simplify(T3*T4);

%% Forward Kinematics
P_DH=T_Final(1:3,4) 
R_DH=T_Final(1:3,1:3)
%% Forward Kinematics (Screw)
S1=SR(0,+1,0,0,0,0,theta1,0);
S2=SR(0,0,+1,0,0,0,theta3,0);
S3=SR(0,0,+1,L1,0,0,theta2_p2,0);
Screw=S1*simplify(S2*S3);

U0=[1;0;0];V0=[0;1;0];W0=[0;0;1];P0=[L1+L5;0;0];Ze=[0,0,0];
S0=[U0,V0,W0,P0;Ze,1];

S_Final=Screw*S0;
R_SR=S_Final(1:3,1:3);
P_SR=S_Final(1:3,4);P_SR=simplify(P_SR);
%% Verification
P_Position=simplify(P_DH-P_SR)
E_Rotation=simplify(R_DH-R_SR)
