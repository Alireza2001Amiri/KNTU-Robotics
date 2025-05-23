%% 
%   Robotics Course, Professor: Prof. Hamid D. Taghirad
%   Aras.kntu.ac.ir/education/robotics
%   Copyright Ali.Hassani 2020
%
%   This code provides a better representation of matrix symbolic formulas, which are numerically defined.
%%
function [T_real] = Matrix_Vpa_Numeric(T3,n,m)

for i=1:n
    for j=1:m
        C = T3(i,j);
        c=vpa(C,2);
        if abs(c) < 0.001
            c=0;
        end
            T3_real(i,j)=c;

    end
end


T_real=vpa(T3_real,3);
end

