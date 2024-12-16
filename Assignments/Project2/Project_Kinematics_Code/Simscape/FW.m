function [P,R] = FW(theta1,theta2,theta3,Structual_Parameters)

L1=Structual_Parameters(1);
L5=Structual_Parameters(2);

P=[1.0*cos(theta1)*(L1*cos(theta3) - L5*cos(theta2));1.0*L1*sin(theta3) - 1.0*L5*sin(theta2);-1.0*sin(theta1)*(L1*cos(theta3) - L5*cos(theta2))];           
R=[-1.0*cos(theta1)*cos(theta2),1.0*cos(theta1)*sin(theta2),1.0*sin(theta1);-1.0*sin(theta2), -1.0*cos(theta2),0; 1.0*cos(theta2)*sin(theta1), -1.0*sin(theta1)*sin(theta2),1.0*cos(theta1)];
end

