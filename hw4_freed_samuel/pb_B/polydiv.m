% Problem B
% Samuel Freed

P = [1 -3 5 -3 0 5];
D = [1 -3 3];

[Q, R] = deconv(P,D);

assert(all(P == conv(D,Q) + R));
disp('P == conv(D,Q) + R');

for i = 1:length(R)
    if R(i)
        count = length(R) - i + 1;
        break;
    end
end

assert(length(D) > count);
disp('Degree of R is less than degree of D');