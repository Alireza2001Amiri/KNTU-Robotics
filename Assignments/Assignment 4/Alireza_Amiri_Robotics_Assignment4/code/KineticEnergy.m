function K = KineticEnergy(M, dtheta)
    % KineticEnergy - Computes the kinetic energy of the system.
    %
    % Inputs:
    %   M             - The mass matrix (Number_of_Links x Number_of_Links matrix).
    %   dtheta        - Generalized joint velocities (Number_of_Links x 1 vector).
    %
    % Outputs:
    %   K             - The kinetic energy (scalar).
    
    % Compute the kinetic energy: K = 0.5 * dtheta' * M * dtheta
    K = 0.5 * transpose(dtheta) * M * dtheta;
    
    % Display the kinetic energy
    disp('Kinetic Energy (K):');
    disp(K);
end
