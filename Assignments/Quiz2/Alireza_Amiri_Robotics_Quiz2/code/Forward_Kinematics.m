clear;
clc;

syms l_1234 
syms theta alpha %passive joints 
syms phi psi d %active joints 

%% Forward Kinematics
P=simplify(Ry(theta)*Rz(phi)*(l_1234*[0;0;1]+d*Ry(psi+alpha)*[0;0;1]))
R=simplify(Ry(theta)*Rz(phi)*Ry(psi+alpha))

