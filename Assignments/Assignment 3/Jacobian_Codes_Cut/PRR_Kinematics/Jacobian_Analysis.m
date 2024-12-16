clear;
clc;

%% Definition
syms d1 theta2 theta3 a2 a3;
theta=[d1;theta2;theta3]; %Joint variables!
Lengths=[0;a2;a3];        %Be careful about this!

%% Screw Table
S1=SR(1,0,0,0,0,0,0,theta(1));
S2=SR(0,0,1,0,0,0,theta(2),0);
S3=SR(0,0,1,Lengths(2),0,0,theta(3),0);
Screw=S1*simplify(S2*S3);

U0=[1;0;0];V0=[0;1;0];W0=[0;0;1];P0=[Lengths(2)+Lengths(3);0;0];Ze=[0,0,0];
S0=[U0,V0,W0,P0;Ze,1];

%% Screw Loop
tic
S1_Final=simplify(S1*S0);           [P_Total_S1,R_Total_S1]=PR_Link(S1_Final);
S2_Final=simplify(S1*S2*S0);        [P_Total_S2,R_Total_S2]=PR_Link(S2_Final);
S3_Final=simplify(S1*S2*S3*S0);     [P_Total_S3,R_Total_S3]=PR_Link(S3_Final);

P_End_Effector_Screw=P_Total_S3;
R_End_Effector_Screw=R_Total_S3;

%% Jacobian Analysis (Screw)
%Serious Notiec: Check page 215. Why didn't we use rotation matrices from
%DH?! Think about this.
tic
s3=R_Total_S2*[0;0;1];
s2=R_Total_S1*[0;0;1];
s1=[1;0;0];    %Notice! Prismatic Joint! Notice 2: Zi is the axis joint! 

sO4=[0;0;0];   
sO3=sO4-R_Total_S3*[a3;0;0];
sO2=sO3-R_Total_S2*[a2;0;0];
sO1=sO2-R_Total_S1*[0;0;0];

Do1=[[0;0;0];s1]; %Notice! Prismatic Joint!
Do2=[s2;cross(sO2,s2)];
Do3=[s3;cross(sO3,s3)];

J_Screw=[Do1,Do2,Do3];
Jv_Screw=J_Screw(4:6,:);
toc
Jw_Screw=J_Screw(1:3,:);


%% Loop closure Jacobian

tic
J_v=jacobian(P_End_Effector_Screw,theta);
toc

Error=simplify(Jv_Screw-J_v)
