% Samuel Freed
% Problem B

function V = bridge(R,Vs)
    % Setting defaults, based on code from:
    % https://www.mathworks.com/matlabcentral/answers/314783-how-to-assign-default-values-to-function-inputs#answer_245397
    switch nargin
        case 0
            R = [];
            Vs = [];
        case 1
            Vs = [];
        case 2
        otherwise
            error('Too many input arguments.');
    end
    if isempty(R)
        R = ones(5,1);
    end
    if isempty(Vs)
        Vs = 2;
    end
    % Assertion of validity of R
    if(length(R) == 5)
        R1 = R(1) * 1000;
        R2 = R(2) * 1000;
        R3 = R(3) * 1000;
        R4 = R(4) * 1000;
        R5 = R(5) * 1000;
        A = [(1/R1+1/R3+1/R4) -1/R3;
             -1/R3 (1/R2+1/R3+1/R5)];
        b = [Vs/R1; Vs/R2];
        V = A\b;
        disp('Va = '); disp(V(1));
        disp('Vb = '); disp(V(2));
    else
        error('Incorrect size of R input');
    end
    
end
