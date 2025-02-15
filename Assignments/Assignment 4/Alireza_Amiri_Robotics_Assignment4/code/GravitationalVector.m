function G = GravitationalVector(J_v_i, Masses, g, Number_of_Links)
% ComputeGravitationalVector: Computes the gravitational vector for a robotic system.
% 
% Inputs:
%   - J_v_i: 3D matrix (3 x Number_of_Links x Number_of_Links), linear Jacobians for each link
%   - Masses: Vector of link masses [1 x Number_of_Links]
%   - g: Gravitational acceleration (scalar)
%   - Number_of_Links: Number of links in the robotic system (scalar)
%
% Outputs:
%   - G: Gravitational vector [Number_of_Links x 1]

% Define the gravitational acceleration vector (in the base frame)
Gravity_Vector = [0; -g; 0];

% Initialize the gravitational vector G(q)
G = sym(zeros(Number_of_Links, 1));

% Compute the gravitational vector
for i = 1:Number_of_Links
    % Linear Jacobian (J_v_i) for the i-th link
    Jv_i = J_v_i(:,:,i);
    
    % Contribution of the i-th link to the gravitational vector
    G_i = simplify(-Masses(i) * transpose(Jv_i) * Gravity_Vector);
    
    % Add the contribution to the total gravitational vector
    G = G + G_i;
end

% Simplify the final gravitational vector
G = simplify(G);

end
