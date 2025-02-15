clear;
clc;

%% Robot Parameters
a2=sqrt(2);
a3=1;

i=0;
N=100;

for d1=linspace(0,1,N)  
    for theta2=linspace(0,pi,N)
        for theta3=linspace(0,2*pi,N)
            i=i+1;  
            
            
                X=[d1 + a3*cos(theta2 + theta3) + a2*cos(theta2);
                      + a3*sin(theta2 + theta3) + a2*sin(theta2);
                                                              0]; 
                                                          
                                                          
              px(i)=X(1);
              py(i)=X(2);
              pz(i)=X(3);  
        end
    end
end


figure(1)
scatter(px,py,'markeredgecolor','r','MarkerFaceColor','blue')
xlabel('x (m)')            
ylabel('y (m)')
grid on
set(gca,'FontWeight','bold','FontName','times','FontSize',17)

figure(2)
scatter3(px,py,pz,'markeredgecolor','r','MarkerFaceColor','blue')
xlabel('x (cm)')            
ylabel('y (cm)')
zlabel('z (cm)')
set(gca,'FontWeight','bold','FontName','times','FontSize',17)