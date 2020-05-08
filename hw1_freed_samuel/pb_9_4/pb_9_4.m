% Problem 9.4
% Samuel Freed

t = 0:0.1:10*pi;
x = @(t) exp(-t/3) .* cos(3*t);
y = @(t) exp(-t/10) .* sin(t) + 1;
plot(x(t),y(t))