% Samuel Freed
% Problem A

function [F, S] = fftexample()
% Based on https://www.mathworks.com/help/matlab/ref/fft.html
    Fs = 8;         % Frequency (8Hz)
    T = 1/Fs;       % Period
    L = 1000;       % 1 second sample
    t = (0:L-1)*T;  % Time vector
    f = -0.1 + 0.2*sin(2*pi*t) - 0.4*cos(2*pi*t) + 0.3*sin(2*pi*3*t);
    F = fft(f);
    S2 = abs(F/L);
    S = S2(1:L/2+1);
    S(2:end-1) = 2*S(2:end-1);
end