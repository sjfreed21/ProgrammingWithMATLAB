%% ODE 45
[t,x] = ode45(@chaotic,[0 10],[-2.04,-3.5,21]);
[t1,x1] = ode45(@chaotic,[0 10],[-2.06,-3.5,21]);
subplot(3,1,1), plot(t,x(:,1),t1,x1(:,1))
subplot(3,1,2), plot(t,x(:,2),t1,x1(:,2))
subplot(3,1,3), plot(t,x(:,3),t1,x1(:,3))
pause;

%% ODE 23
[t,x] = ode23(@chaotic,[0 10],[-2.04,-3.5,21]);
subplot(3,1,1), plot(t,x(:,1))
subplot(3,1,2), plot(t,x(:,2))
subplot(3,1,3), plot(t,x(:,3))
pause;

%% ODE 23s
[t,x] = ode23s(@chaotic,[0 10],[-2.04,-3.5,21]);
subplot(3,1,1), plot(t,x(:,1))
subplot(3,1,2), plot(t,x(:,2))
subplot(3,1,3), plot(t,x(:,3))
pause;