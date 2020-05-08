function dX = chaotic(t, X)
    dX = zeros(3,1);
    dX(1) = 10*(X(2)-X(1));
    dX(2) = -X(1)*X(3) + 28*X(1) - X(2);
    dX(3) = X(1)*X(2) - (8*X(3))/3;
end