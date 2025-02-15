function [R] = Rx(value)
R = [1 0 0; 0 cos(value) -sin(value); 0 sin(value) cos(value)];
end

