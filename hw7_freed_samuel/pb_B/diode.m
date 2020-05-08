% Samuel Freed
% Problem B

%(a) (e)
I0 = 10^(-12);
n = 1;
Vt = ((1.3806488*10^(-23))*300)/(1.602176565*10^(-19));
R = 10^3;
V_s = 3;

f1 = @(V) I0.*(exp(V./(n.*Vt)) - 1);
f2 = @(V) V ./ R;

[v1, func, flag] = fsolve(@(v1) f1(v1) - f2(V_s-v1), 1.2);

%(b)
if(flag == 1)
    fprintf('\nSolution found\n\n');
else
    error('No solution found');
end

%(a continued)
fprintf('v1 = %g\nfunction = %g\nflag = %g\n\n', v1, func, flag);

v2 = V_s-v1;
fprintf('v2 = %g\n\n', v2);

i1 = f1(v1);
i2 = f2(v2);
fprintf('i = i1 = i2 = %g\n\n',i1);

%(c) (d)
vp = linspace(1, 35, 1000);
plot(f1(vp));
hold on
plot(f2(vp));
xlabel('Voltage');
ylabel('Current');
title('I-V Characteristics');
legend('f1', 'f2');

%(f)
p1 = @(vn1) vn1 .* f1(vn1);
p2 = @(vn2) vn2 .* f2(vn2);

pd1 = p1(v1);
pd2 = p2(v2);

fprintf('Diode power: %g\n', pd1);
fprintf('Resistor power: %g\n\n', pd2);

%(g)
pd12 = p1(V_s);
pd22 = p2(V_s);

fprintf('Diode alone power: %g\n', pd12);
fprintf('Resistor alone power: %g\n', pd22);
