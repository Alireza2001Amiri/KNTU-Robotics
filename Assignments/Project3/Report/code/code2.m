clc

%Revolute = 60
%Revolute3 = 15
%Revolute4 = 0


sim("Final_Model.slx")


disp("x: ")
disp(out.x_link.Data(:, :, 1))

disp("y: ")
disp(out.y_link.Data(:, :, 1))

disp("z: ")
disp(out.z_link.Data(:, :, 1))

disp("R: ")
disp(out.R.Data(:, :, 1))



disp("vx: ")
disp(out.vx_link.Data(:, :, 1))

disp("vy: ")
disp(out.vy_link.Data(:, :, 1))

disp("vz: ")
disp(out.vz_link.Data(:, :, 1))




disp("wx: ")
disp(out.wx_link.Data(:, :, :))

disp("wy: ")
disp(out.wy_link.Data(:, :, :))

disp("wz: ")
disp(out.wz_link.Data)


disp("xinput: ")
disp(out.xinput_link1.Data(:, :, :))