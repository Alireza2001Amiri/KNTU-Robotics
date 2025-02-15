function I = Inertia_Function(Masses, Lengths)
    % Compute_Inertia calculates the moments of inertia for a series of links.
    %
    % Inputs:
    %   Masses  - A vector of link masses [m1, m2, ..., mn]
    %   Lengths - A vector of link lengths [L1, L2, ..., Ln]
    %
    % Outputs:
    %   I       - A vector of moments of inertia for the links [I1, I2, ..., In]
    %
    % Assumes the links are slender rods rotating about their ends.

    % Number of links
    Number_of_Links = length(Masses);
    
    % Initialize a symbolic vector for moments of inertia
    I = sym(zeros(Number_of_Links, 1));
    
    % Compute the moment of inertia for each link
    for i = 1:Number_of_Links
        I(i) = (1/12) * Masses(i) * Lengths(i)^2;
    end

    % Display the moments of inertia
    disp('Moments of Inertia (I):');
    for i = 1:Number_of_Links
        fprintf('I_%d = ', i);
        disp(I(i));
    end
end
