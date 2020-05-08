% Samuel Freed
% Midterm Problem 2

c = -[5 3 1];       % Profit equation: 5*a + 3*b + 1*c
A = [1.5 1.0 0.5];  % Per-product time constraints
b = [24];           % Maximum time (24 hours in a day)
lb = [2 2 2];       % Minimum of 2 units of each product
ub = [12 12 12];    % Maximum of 12 units of each product
    
[x, fv, exit, out] = linprog(c,A,b,[],[],lb,ub);

if(exit == 1)
    disp('Units of Product A: '); disp(x(1));
    disp('Units of Product B: '); disp(x(2));
    disp('Units of Product C: '); disp(x(3)); 
    disp('Maximum Profit ($): '); disp(-1*fv);
else
    error('Optimal solution not found.');
end
    