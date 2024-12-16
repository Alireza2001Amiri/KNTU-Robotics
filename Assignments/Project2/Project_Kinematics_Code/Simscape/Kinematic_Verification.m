clear;
clc;
i=1;

%% Structure Parameters
L1=1.28;
L2=1;
L5=1.35; 
Structual_Parameters=[L1;L5]; 

%% Trajectory Define
theta1=pi/4; %(Optional Values)  
theta2=(pi/6); %(Optional Values)  
theta3=(pi/2); %(Optional Values)      
   
%% Forward_Kinemtic:
[P,R] = FW(theta1,theta2,theta3,Structual_Parameters);

%% Simulation
run('Model_DataFile') %Input data variables
sim('Model',1)        %Run simulink from Code

%% Error
P_Simulation=P_Sim(1,:)'
R_Simulation=R_Sim(:,:,1)

Error_P=P-P_Simulation
Error_R=R-R_Simulation

