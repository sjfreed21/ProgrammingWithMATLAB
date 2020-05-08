function xdot = wk6(x,g)
%Diff Eqs of Free Fall
%   x(1) : position
%   x(2) : velocity
%      g : acceleration of gravity
xdot = [
        x(2);
        -g
        ];
end

