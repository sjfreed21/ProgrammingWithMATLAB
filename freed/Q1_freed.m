% Samuel Freed
% Midterm Problem 1

% Since this is a third-order polynomial, it has up to three roots.
% Plotting this function using the code below shows that the only zero is
% somewhere in the negative x range.

% t = linspace(-10, 10);
% x = @(t) t.^3 - 3*t.^2 + 2*t + 1;
% hold on
% grid on
% plot(x(t),t);

% Thus, when looking near x0 = 1, fsolve fails.

[x, fval, exitflag] = fsolve(@(x) x.^3 - 3*x.^2 + 2*x + 1,1);

if(exitflag == 1)
    disp('Zero Found at x ='); disp(x);
    disp('x^3 - 3x^2 + 2x + 1'); disp(fval);
else
    error('Error: No solution found.');
end