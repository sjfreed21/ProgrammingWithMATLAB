% Samuel Freed
% Problem A

syms g;
syms x(t);

xdot = diff(x);
x2 = diff(xdot) == -1*g;

f = dsolve(x2, x(0)==10, xdot(0)==0);
f = subs(f,g,9.81);
fplot(f,[0 2])