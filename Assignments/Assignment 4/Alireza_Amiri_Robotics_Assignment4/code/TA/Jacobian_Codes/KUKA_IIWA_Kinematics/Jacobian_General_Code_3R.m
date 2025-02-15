clear;
clc;

%% Definition
Number_of_Links=3; 
theta=(sym('theta',[Number_of_Links 1])); assume(theta,'real')
syms a1; syms a2; syms a3;
Lengths=[a1;a2;a3]; %Be careful about this!

%% Screw Table

% S(:,:,1)=SR(0,0,1,0,0,0,  theta(1),0);
% S(:,:,2)=SR(0,-1,0,0,0,0, theta(2),0);
% S(:,:,3)=SR(0,-1,0,Lengths(2),0,0,  theta(3),0);
% 
% U0=[1;0;0];V0=[0;0;1];W0=[0;-1;0];P0=[Lengths(2)+Lengths(3);0;0];Ze=[0,0,0];
% S0=[U0,V0,W0,P0;Ze,1];

%Planar 3R Robot
S(:,:,1)=SR(0,0,1,0,0,0, theta(1),0);
S(:,:,2)=SR(0,0,1,Lengths(1),0,0, theta(2),0);
S(:,:,3)=SR(0,0,1,Lengths(1)+Lengths(2),0,0, theta(3),0);
U0=[1;0;0];V0=[0;1;0];W0=[0;0;1];P0=[Lengths(1)+Lengths(2)+Lengths(3);0;0];Ze=[0,0,0];
S0=[U0,V0,W0,P0;Ze,1];

Screw_Total(:,:,1)=S(:,:,1);

for i=1:Number_of_Links-1
Screw_Total(:,:,i+1)=simplify(Screw_Total(:,:,i)*S(:,:,i+1));
end

%% Kinematic Analysis - Screw - all things
P_Total_Screw(:,:,1)=sym(zeros(3,1));

for i=1:Number_of_Links
[P_Total_Screw(:,:,i+1),R_Total_Screw(:,:,i)]=PR_Link(Screw_Total(:,:,i)*S0);
zi_Screw(:,i)=R_Total_Screw(:,3,i);
end
zi_Screw(:,1)=[0;0;1]; %Inital Axis

%Forward kinematics - End effector analysis
P_End_Effector_Screw=simplify(P_Total_Screw(:,:,Number_of_Links+1));
R_End_Effector_Screw=R_Total_Screw(:,:,Number_of_Links);

%% DH Table

%Planar 3R Robot
T(:,:,1)=DH(Lengths(1),0,0,theta(1));    T(:,:,1)=Matrix_Vpa(T(:,:,1),4,4);
T(:,:,2)=DH(Lengths(2),0,0,theta(2));    T(:,:,2)=Matrix_Vpa(T(:,:,2),4,4);
T(:,:,3)=DH(Lengths(3),0,0,theta(3));    T(:,:,3)=Matrix_Vpa(T(:,:,3),4,4);

% T(:,:,1)=DH(0,pi/2,0,theta(1));         T(:,:,1)=Matrix_Vpa(T(:,:,1),4,4);
% T(:,:,2)=DH(Lengths(2),0,0,theta(2));    T(:,:,2)=Matrix_Vpa(T(:,:,2),4,4);
% T(:,:,3)=DH(Lengths(3),0,0,theta(3));    T(:,:,3)=Matrix_Vpa(T(:,:,3),4,4);


T_Total(:,:,1)=T(:,:,1);
for i=1:Number_of_Links-1
T_Total(:,:,i+1)=(T_Total(:,:,i)*T(:,:,i+1));
end

%% Kinematic Analysis - DH - all things
P_Total_DH(:,:,1)=sym(zeros(3,1));
for i=1:Number_of_Links
[P_Total_DH(:,:,i+1),R_Total_DH(:,:,i)]=PR_Link(T_Total(:,:,i));
zi_DH(:,i)=R_Total_DH(:,3,i);
end

%Forward kinematics - End effector analysis
P_End_Effector_DH=simplify(P_Total_DH(:,:,Number_of_Links+1));
R_End_Effector_DH=R_Total_DH(:,:,Number_of_Links);

%% First verification
E_P=simplify(P_End_Effector_DH-P_End_Effector_Screw)
E_R=simplify(R_End_Effector_DH-R_End_Effector_Screw)

% E_R_Links=simplify(R_Total_DH-R_Total_Screw)

%% Jacobian Analysis - DH
PE(:,:,Number_of_Links+1)=sym([0;0;0]);
for i=Number_of_Links:-1:1
    if i==1    
        PE(:,:,i)=(r_DH_Functions(Lengths(i),0,theta(i))+PE(:,:,i+1));          
    else 
        PE(:,:,i)=(R_Total_DH(:,:,i-1)*r_DH_Functions(Lengths(i),0,theta(i))+PE(:,:,i+1));  
    end
end

%NOTICE!!!!!  ----------  %NOTICE!!!!!
zi_DH_Total=[sym([0;0;1]),zi_DH(:,1:Number_of_Links-1)];

tic
for i=1:Number_of_Links
  %Jv_DH(:,i)=simplify(cross(zi(:,i),PE(:,:,i)));
  Jv_DH(:,i)=simplify(Skew(zi_DH_Total(:,i))*PE(:,:,i));
end
toc

Jw_DH=zi_DH_Total;


%% Jacobian Analysis (Screw)

%NOTICE!!!!!  ----------  %NOTICE!!!!!
%R_Total_Screw=R_Total_DH; 

 s(:,:,Number_of_Links+1)=sym([0;0;0]);
s0(:,:,Number_of_Links+1)=sym([0;0;0]);

for i=Number_of_Links+1:-1:1 
        
                if i==Number_of_Links+1
                    %s(:,:,i)=[0;0;1];
                   s0(:,:,i)=[0;0;0];
                elseif  i==1
                    s(:,:,i)=[0;0;1];
                   s0(:,:,i)=s0(:,:,i+1)-R_Total_Screw(:,:,i)*[Lengths(i);0;0];
                else 
                  s(:,:,i)=R_Total_Screw(:,:,i-1)*[0;0;1]; 
                 s0(:,:,i)=s0(:,:,i+1)-R_Total_Screw(:,:,i)*[Lengths(i);0;0];
                 end
         
end

s_final=s(:,:,1:Number_of_Links);


for i=1:1:Number_of_Links
%   Jv_Screw(:,i)=simplify(cross(s0(:,:,i),s(:,:,i)));
    Jv_Screw(:,i)=simplify(Skew(s0(:,:,i))*s(:,:,i));
    Jw_Screw(:,i)=(s_final(:,i));
end


E_Jw=simplify(Jw_Screw-Jw_DH)
E_Jv=simplify(Jv_Screw-Jv_DH)


