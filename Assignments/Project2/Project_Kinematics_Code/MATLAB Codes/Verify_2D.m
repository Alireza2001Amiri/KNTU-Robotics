clear;
clc;

%% Structure Parameters
L1=1.28; L2=1; L5=1.35; 
Structual_Parameters=[L1;L5]; 
%% Trajectory Define
theta1=0; %(Optional Values)  
theta2=(pi/4); %(Optional Values)  
theta3=3*(pi/4); %(Optional Values)      
   
%% Forward_Kinemtic:
[P,R] = FW(theta1,theta2,theta3,Structual_Parameters);
P*100 %Convert to centi meter
