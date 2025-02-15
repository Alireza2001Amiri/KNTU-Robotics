function [R] = Ry(value)
R = [cos(value) 0 sin(value); 0 1 0; -sin(value) 0 cos(value)];
end

