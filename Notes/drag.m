function drag
% DRAG: Trajectory of drag.
%   DRAG

% Trajectory of Body
g = 9.81;
d = 0.47;
r = 0.025;
a = pi * r * r;
s = 1000;
m = 4 * a * r * s / 3;
rho = 1.2922;
k = rho * a * d / 2;

x0 = [0; 0];

% ODE Solving
sol = ode45(@(t,x) wk6_2(t,x,m,g,k),[0 12],x0);

% Plot Setup
hp = plot(sol.x, sol.y);
legend(hp,'position (m)','velocity (m/s)','location','best');
title('Falling Sphere with Drag');
xlabel('time (s)');