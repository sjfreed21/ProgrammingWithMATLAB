function xdot = wk6_2(~, x, m, g, k)
%Diff Eqs of Sphere subject to Gravity + Drag
%   x(1) : position
%   x(2) : velocity

% Air drag and gravity
drag = -k * x(2) * abs(x(2));
pull = -m * g;

xdot = [
        x(2);
        (drag + pull) / m
        ];
end

