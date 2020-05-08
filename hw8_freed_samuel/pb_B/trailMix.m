% Samuel Freed
% Problem B

% Profit statement to maximize
% P = 8(p+a+c) - 2p - 3.5a - 5c = 6p + 4.5a + 3c
c = -[6 4.5 3];  

% Restrictions
% p <= 0.25(p+a+c) --> 0.75p - 0.25a - 0.25c <= 0
% c >= 0.4(p+a+c) --> -c <= -0.4(p+a+c) --> 0.4p + 0.4a - 0.6c <= 0
% p + a + c <= 100
A = [0.75 -0.25 -0.25;
     0.4 0.4 -0.6;      
     1 1 1];
b = [0; 0; 100];

% Bounds
lb = zeros(3,1);
ub = [40; 25; 20];

[x, fv, exit] = linprog(c,A,b,[],[],lb,ub);

if(exit == 1)
    disp('p ='); disp(x(1));
    disp('a ='); disp(x(2));
    disp('c ='); disp(x(3));
    disp('profit ='); disp(6*x(1)+4.5*x(2)+3*x(3));
end