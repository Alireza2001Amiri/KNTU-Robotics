function B = CoriolisForceVector(M, M_dot, dtheta, theta)
    % CoriolisForceVector - Computes the Coriolis force vector for a robotic system.
    %
    % Inputs:
    %   M             - The mass matrix (Number_of_Links x Number_of_Links matrix).
    %   M_dot         - The time derivative of the mass matrix (Number_of_Links x Number_of_Links matrix).
    %   dtheta        - Generalized joint velocities (Number_of_Links x 1 vector).
    %   theta         - Generalized joint positions (Number_of_Links x 1 vector).
    %
    % Outputs:
    %   B             - The Coriolis force vector (Number_of_Links x 1 vector).
    
    % Compute the term M_dot * dtheta
    Coriolis_term_1 = simplify(M_dot * dtheta);

    % Compute the kinetic energy: K = 0.5 * dtheta' * M * dtheta
    K = 0.5 * transpose(dtheta) * M * dtheta;

    % Compute the partial derivatives of the kinetic energy with respect to theta
    Coriolis_term_2 = jacobian(K, theta).';

    % Compute the Coriolis force vector B(q, q')
    B = simplify(Coriolis_term_1 - Coriolis_term_2);

    % Display the Coriolis force vector
    disp('Coriolis Force Vector (B):');
    disp(B);
end
