% Samuel Freed
% Problem A

x0 = [pi/2;
      -pi];
  
g = 9.81; % m/s^2
options = odeset("MaxStep", 0.01);
sol = ode45(@(t ,x) f(t ,x ,g ,1), [0 10], x0, options);
subplot(2 ,1 ,1)
plot(sol.x , sol.y);
legend ("angular displacement (rad)","angular velocity (rad/s)")
title("Waveforms")
xlabel("time (s)")
subplot(2 ,1 ,2)
plot(sol.y(1,:) , sol.y(2,:))
title("Phase Plane")
xlabel("angular displacement (rad)")
ylabel("angular velocity (rad/s)")
saveas(gcf,'pendulum.png');

function xdot = f(~, x, g, l)
    xdot = [x(2);
            -g/l * sin(x(1))];
end