function M_dot = MassMatrixTimeDerivative(M, theta_dot, theta, Number_of_Links)
    % MassMatrixTimeDerivative - Computes the time derivative of the mass matrix (dM/dt) for a robotic system.
    %
    % Inputs:
    %   M             - The mass matrix (Number_of_Links x Number_of_Links matrix).
    %   theta_dot     - Symbolic generalized joint velocities (Number_of_Links x 1 vector).
    %   theta         - Symbolic generalized joint positions (Number_of_Links x 1 vector).
    %   Number_of_Links- Total number of links in the robotic system.
    %
    % Outputs:
    %   M_dot         - The time derivative of the mass matrix (Number_of_Links x Number_of_Links matrix).
    
    % Initialize the time derivative of M
    M_dot = sym(zeros(Number_of_Links, Number_of_Links));

    % Compute the time derivative of the mass matrix
    for i = 1:Number_of_Links
        for j = 1:Number_of_Links
            for k = 1:Number_of_Links
                % Use theta_dot(k) explicitly for joint velocities
                M_dot(i, j) = M_dot(i, j) + diff(M(i, j), theta(k)) * theta_dot(k);
            end
        end
    end

    % Simplify the final result
    M_dot = simplify(M_dot);
    
    % Display the time derivative of the mass matrix
    disp('Time Derivative of the Mass Matrix (M_dot):');
    disp(M_dot);
end
