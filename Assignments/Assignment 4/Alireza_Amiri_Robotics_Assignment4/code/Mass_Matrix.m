function M = Mass_Matrix(J_v_i, J_w_i, I, Masses, Number_of_Links)
    % ComputeMassMatrix - Computes the mass matrix for a robotic system.
    %
    % Inputs:
    %   J_v_i          - Linear Jacobians for each link (3 x Number_of_Links x Number_of_Links array).
    %   J_w_i          - Angular Jacobians for each link (3 x Number_of_Links x Number_of_Links array).
    %   I              - Moments of inertia for each link (1 x Number_of_Links vector).
    %   Masses         - Masses of the links (1 x Number_of_Links vector).
    %   Number_of_Links- Total number of links in the robotic system.
    %
    % Output:
    %   M - Mass matrix (Number_of_Links x Number_of_Links matrix).

    % Initialize the mass matrix
    M = sym(zeros(Number_of_Links, Number_of_Links));

    % Compute the mass matrix
    for i = 1:Number_of_Links
        % Linear Jacobian (J_v_i) and Angular Jacobian (J_w_i) for the i-th link
        Jv_i = J_v_i(:,:,i);
        Jw_i = J_w_i(:,:,i);

        % Moment of inertia for the i-th link
        I_i = I(i);

        % Contribution of the i-th link to the mass matrix
        M_i = simplify(Masses(i) * (transpose(Jv_i) * Jv_i) + transpose(Jw_i) * I_i * Jw_i);

        % Add the contribution to the total mass matrix
        M = M + M_i;
    end

    % Simplify the final mass matrix
    M = simplify(M);

    % Display the mass matrix
    disp('Mass Matrix (M):');
    disp(M);
end