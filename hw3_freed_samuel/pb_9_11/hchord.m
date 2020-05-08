function rv = hchord( spec, dur, k )
  % produce a sampled signal for a chord of duration
  % 'dur' from a specification 'spec', which is a list
  % of notes. Harmonics of these notes will be generated based on
  % the given note fundamentals and the contribution value
  % from the 'k' matrix
  
  % obtain number of notes in chord
  [N, width] = size(spec);
  if width ~= 2
    error('malformed input')
  end
  % sample times
  t = (0:8192*dur-1)/8192;
  % initialize signal and accumulate notes into it
  rv = zeros(1, length(t));
  for n = 1:N
      f = 0;
    for i = 1:length(k)
        f = f + (440*i) * 2^(spec(n,1) + spec(n,2)/12) * k(i);
    end
    rv = rv + sin(2*pi*f*t);
  end
  % scale the signal to within (-1,1)
  rv = rv/N * 0.999;   
end

% sound(hchord([0 0; 0 3; 0 7], 0.25, [0.7 0.05 0.15 0.1]));