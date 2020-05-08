% Problem 9.5
% Samuel Freed

t = 0:(1/8192):(1-(1/8192));
midA = tone(1,440);

figure(1)
plot(midA,t);
pause(2);

figure(2)
plot(midA(1:ceil(8192/440)),t(1:ceil(8192/440)));
pause(2);

figure(3)
plot(midA(1:ceil(8192/440)),t(1:ceil(8192/440)),'-o');
pause(2);

figure(4)
plot(midA(1:ceil(10*8192/440)),t(1:ceil(10*8192/440)));