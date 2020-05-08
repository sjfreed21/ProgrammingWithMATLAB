% Samuel Freed
% Problem A

% [ 2, -4, 4 ] = -3
% [ 1, -2, 1 ] = 5
% [ 1, -4, 6 ] = 10

F = @system;
x0 = [10 10 10];
[x, fv] = fsolve(F,x0)

% Checking:
% A = [2 -4 4;
%      1 -2 1;
%      1 -4 6];
% b = [-3; 5; 10];
% x = A\b;
% disp(x');

function F = system(x)
F(1) = 2*x(1) - 4*x(2) + 4*x(3) + 3;
F(2) = x(1) - 2*x(2) + x(3) - 5;
F(3) = x(1) - 4*x(2) + 6*x(3) - 10;
end
