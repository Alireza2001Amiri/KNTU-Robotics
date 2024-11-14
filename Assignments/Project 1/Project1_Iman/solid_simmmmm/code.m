clc


Revolute3 = 50
Revolute = 160
Revolute4 = 0


sim("Final_Model.slx")


disp("x: ")
disp(out.x_link.Data(:, :, 1))

disp("y: ")
disp(out.y_link.Data(:, :, 1))

disp("z: ")
disp(out.z_link.Data(:, :, 1))

disp("R: ")
disp(out.R.Data(:, :, 1))