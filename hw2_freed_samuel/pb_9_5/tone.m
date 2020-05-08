function rv = tone(duration, freq)
% Generates sampled sine wave for given 'freq' and 'duration'. Sampling
% rate is 8192 Hz.
    sampleTimes = (0:duration*8192-1)/8192;
    rv = sin(2*pi*freq*sampleTimes);
end