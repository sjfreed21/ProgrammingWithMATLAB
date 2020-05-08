function xdot = dcm(t, x, K, J, eta, L, R, v, tau)
%   t : time
%   x(1) : angular displacement
%   x(2) : angular velocity
%   x(3) :
%   K :
%   J :
%   eta :
%   L :
%   R :
%   v :
%   tau :

xdot = [
        x(2);
        (K * x(3) - eta * x(2) - tau(x(1))) / J;
        (v(t) - K * x(2) - R * x(3)) / L
        ];
end

