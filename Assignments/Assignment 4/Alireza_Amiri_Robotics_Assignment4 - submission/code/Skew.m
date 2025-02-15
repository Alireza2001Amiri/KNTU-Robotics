function [S] = Skew(a)
x1=a(1);
x2=a(2);
x3=a(3);

S=[0,-x3,x2;x3,0,-x1;-x2,x1,0]; %Use Skew symetric matrix, instead of cross product, Skew(a)*b=cross(a,b)

end

