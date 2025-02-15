clear;
clc;

syms d1 theta2 theta3 
syms a2 a3

%% %% Forward Kinematics (Screw) - XY Axis
S1=SR(1,0,0,0,0,0,0,d1);
S2=SR(0,0,1,0,0,0,theta2,0);
S3=SR(0,0,1,a2,0,0,theta3,0);
Screw=S1*simplify(S2*S3);

U0=[1;0;0];V0=[0;1;0];W0=[0;0;1];P0=[a2+a3;0;0];Ze=[0,0,0];
S0=[U0,V0,W0,P0;Ze,1];

S_Final=Screw*S0;

R_SR=S_Final(1:3,1:3);
P_SR=S_Final(1:3,4);P_SR=simplify(P_SR);


%% %% Forward Kinematics - DH - ZX Axis
T1=DH(0,-pi/2,d1,0);  T1=Matrix_Vpa(T1,4,4);
T2=DH(a2,0,0,theta2); T2=Matrix_Vpa(T2,4,4);
T3=DH(a3,0,0,theta3); T3=Matrix_Vpa(T3,4,4);%

T_Final=T1*simplify(T2*T3);
P_DH=T_Final(1:3,4)
R_DH=T_Final(1:3,1:3)


%% %% Forward Kinematics (Screw) - ZX Axis
S1=SR(0,0,1,0,0,0,0,d1);
S2=SR(0,1,0,0,0,0,theta2,0);
S3=SR(0,1,0,a2,0,0,theta3,0);
Screw=S1*simplify(S2*S3);

U0=[1;0;0];V0=[0;0;-1];W0=[0;1;0];P0=[a2+a3;0;0];Ze=[0,0,0];
S0=[U0,V0,W0,P0;Ze,1];

S_Final=Screw*S0;
R_SR=S_Final(1:3,1:3)
P_SR=S_Final(1:3,4);P_SR=simplify(P_SR)


%% Verification
P_Position=simplify(P_DH-P_SR)
E_Rotation=simplify(R_DH-R_SR)
% %% Final_Step: Export Forward Kinematics to a Functions!

%% Inverse Kinematics

