% Problem A
% Samuel Freed

theta = 0:0.01:2*pi;
t = -1000:0.01:1000;

r = @(theta) sin(2.*theta);
x = @(t) (1-t.^2)./(1+t.^2);
y = @(t) (2*t)./(1+t.^2);

figure(1);
polarplot(theta, r(theta));
saveas(gcf, 'firstcurve.pdf');

figure(2);
plot(x(t),y(t));
axis equal;
saveas(gcf, 'secondcurve.png');