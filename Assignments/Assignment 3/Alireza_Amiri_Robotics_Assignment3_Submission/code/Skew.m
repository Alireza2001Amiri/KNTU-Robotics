function result = Skew(vec1, vec2)
    % skew_multiplication: Computes the cross-product of `vec1` and multiplies
    % the result with `vec2`.
    %
    % Inputs:
    %   - vec1: A 3x1 vector (column vector).
    %   - vec2: A 3x1 vector (column vector).
    %
    % Output:
    %   - result: The resulting 3x1 vector after skew-symmetric multiplication.
    %
    % Usage:
    %   result = skew_multiplication([1; 2; 3], [4; 5; 6]);

    % Validate inputs
    if ~isvector(vec1) || ~isvector(vec2) || length(vec1) ~= 3 || length(vec2) ~= 3
        error('Both inputs must be 3x1 vectors.');
    end
    
    % Ensure inputs are column vectors
    vec1 = vec1(:); 
    vec2 = vec2(:); 

    % Create skew-symmetric matrix for vec1
    skewMatrix = [   0     -vec1(3)  vec1(2);
                  vec1(3)     0     -vec1(1);
                 -vec1(2)  vec1(1)     0   ];

    % Multiply the skew matrix with vec2
    result = skewMatrix * vec2;
end
