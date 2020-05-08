function freefallode
%FREEFALLODE: Trajectory of free fall.
%   FREEFALLODE

% Trajectory of Body
g = 9.81;
h = 10;
v0 = 0;

% Time Calculation
T = v0/g + sqrt((v0/g)^2 + 2*h/g);

% ODE Solving
sol = ode45(@(~,x) wk6(x,g),[0 T],[h; v0]);

% Plot Setup
hp = plot(sol.x, sol.y);
xlim([0 T]);
line(xlim,[0 0],'Color','k');
legend(hp,'position (m)','velocity (m/s)','location','best');
title('Free Fall');
xlabel('time (s)');