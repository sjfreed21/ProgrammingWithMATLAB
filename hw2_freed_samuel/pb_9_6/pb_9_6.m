% Problem 9.6
% Samuel Freed

t = 0:(1/8192):(5-(1/8192));
midA = tone(5,440);

% Exponential Decay
figure(1)
f1 = midA .* exp(-3*t);
plot(f1);
sound(f1);
pause;

% Cosine Pulse
figure(2)
f2 = midA .* cos(10*t);
plot(f2);
sound(f2);
pause;

% Pulse and Decay
figure(3)
f3 = midA .* cos(10*t) .* exp(-3*t);
plot(f3);
sound(f3);