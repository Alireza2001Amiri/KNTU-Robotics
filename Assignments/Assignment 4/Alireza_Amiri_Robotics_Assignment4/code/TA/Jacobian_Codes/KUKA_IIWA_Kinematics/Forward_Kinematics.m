clear;
clc;

syms theta1 theta2 theta3 theta4 theta5 theta6 theta7 
syms a1 a3 a5 a7

%% Forward Kinematics (DH)
T1=DH(0,-pi/2,a1,theta1); T1=Matrix_Vpa(T1,4,4);
T2=DH(0,+pi/2,0 ,theta2); T2=Matrix_Vpa(T2,4,4);
T3=DH(0,+pi/2,a3,theta3); T3=Matrix_Vpa(T3,4,4);

T4=DH(0,-pi/2,0 ,theta4); T4=Matrix_Vpa(T4,4,4);
T5=DH(0,-pi/2,a5,theta5); T5=Matrix_Vpa(T5,4,4);
T6=DH(0,+pi/2,0 ,theta6); T6=Matrix_Vpa(T6,4,4);

T7=DH(0,    0,a7 ,theta7); T7=Matrix_Vpa(T7,4,4);


T123=T1*T2*T3;
T456=T4*T5*T6;
T_Final=simplify(T123*T456*T7);

P_DH=T_Final(1:3,4); 
R_DH=T_Final(1:3,1:3);


%% Forward Kinematics (Screw)
S1=SR(0,0,1,0,0,0,  theta1,0);
S2=SR(0,1,0,0,0,a1, theta2,0);
S3=SR(0,0,1,0,0,0,  theta3,0);

S4=SR(0,-1,0,0,0,a1+a3    ,theta4,0);
S5=SR(0,0,1,0,0,0        ,theta5,0);
S6=SR(0,1,0,0,0,a1+a3+a5 ,theta6,0);

S7=SR(0,0,1,0,0,0        ,theta7,0);

Screw=S1*S2*S3*S4*S5*S6*S7;

U0=[1;0;0];V0=[0;1;0];W0=[0;0;1];P0=[0;0;a1+a3+a5+a7];Ze=[0,0,0];
S0=[U0,V0,W0,P0;Ze,1];

S_Final=Screw*S0;
R_SR=S_Final(1:3,1:3);
P_SR=S_Final(1:3,4);P_SR=simplify(P_SR);


%% Verification
P_Position=simplify(P_DH-P_SR)
E_Rotation=simplify(R_DH-R_SR)



%% Jacobian Analysis

