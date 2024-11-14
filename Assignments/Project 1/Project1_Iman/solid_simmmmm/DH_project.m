

syms theta1 theta2 theta3 L1 L5
T1 = DH(0, pi/2, 0, theta1);
T2 = DH(L1, 0, 0, theta2);
T3 = DH(L5, 0, 0, theta3);
T_total_DH = simplify(T1*simplify(T2*T3));
disp(T_total_DH)

S1 = SR(0, 0, 1, 0, 0, 0, theta1, 0);
S2 = SR(0, -1, 0, 0, 0, 0, theta2, 0);
S3 = SR(0, -1, 0, 0, L1, 0, theta3, 0);
T_total_SR = simplify(S1*simplify(S2*S3));
disp(T_total_SR)

function [T] = DH(a, alpha, d, theta)
    % Calculate the DH transformation matrix using the provided DH parameters.
    T = [cos(theta) -sin(theta) * cos(alpha) sin(theta) * sin(alpha) a * cos(theta); ...
         sin(theta) cos(theta) * cos(alpha) -cos(theta) * sin(alpha) a * sin(theta); ...
         0 sin(alpha) cos(alpha) d; ...
         0 0 0 1];
end


function [S] = SR(s_x, s_y, s_z, s_ox, s_oy, s_oz, theta, t)
    % Calculate the screw matrix using the provided screw parameters.
    S = [(s_x^2 - 1)*(1 - cos(theta)) + 1, s_x*s_y*(1 - cos(theta)) - s_z*sin(theta), s_x*s_z*(1 - cos(theta)) + s_y*sin(theta), t*s_x - s_ox*(s_x^2 - 1)*(1 - cos(theta)) - s_oy*(s_x*s_y*(1 - cos(theta)) - s_z*sin(theta)) - s_oz*(s_x*s_z*(1 - cos(theta)) + s_y*sin(theta)); ...
         s_x*s_y*(1 - cos(theta)) + s_z*sin(theta), (s_y^2 - 1)*(1 - cos(theta)) + 1, s_y*s_z*(1 - cos(theta)) - s_x*sin(theta), t*s_y - s_ox*(s_x*s_y*(1 - cos(theta)) + s_z*sin(theta)) - s_oy*(s_y^2 - 1)*(1 - cos(theta)) - s_oz*(s_y*s_z*(1 - cos(theta)) - s_x*sin(theta)); ...
         s_x*s_z*(1 - cos(theta)) - s_y*sin(theta), s_y*s_z*(1 - cos(theta)) + s_x*sin(theta), (s_z^2 - 1)*(1 - cos(theta)) + 1, t*s_z - s_ox*(s_x*s_z*(1 - cos(theta)) - s_y*sin(theta)) - s_oy*(s_y*s_z*(1 - cos(theta)) + s_x*sin(theta)) - s_oz*(s_z^2 - 1)*(1 - cos(theta)); ...
         0, 0, 0, 1];
end



