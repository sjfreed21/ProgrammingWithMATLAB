function sol = euler_solve(ydot, init, t)
n = length(init);
steps = length(t);
sol = zeros(n, steps);
sol(:,1) = init;
for m = 1:steps-1
    sol(:,m+1) = sol(m) + (t(m+1)-t(m)) * ydot(t(m), sol(:,m));
    % N(t)     = N(t-1) +       h       *       r*N(t-1)
end
end
