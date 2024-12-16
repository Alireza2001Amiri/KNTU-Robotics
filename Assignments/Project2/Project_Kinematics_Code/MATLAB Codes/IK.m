function [THETA1,THETA2,THETA3] = IK(P,R,Structual_Parameters)

L1=Structual_Parameters(1);
L5=Structual_Parameters(2);

x=P(1); y=P(2); z=P(3);
THETA1=atan2(-z,x);
THETA2=atan2(-R(2,1),-R(2,2));
THETA3=acos((L5 * cos(THETA2) + sqrt(x ^ 2 + z ^ 2)) / L1);

end

