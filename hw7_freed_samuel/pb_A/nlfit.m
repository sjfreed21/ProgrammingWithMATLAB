% Samuel Freed
% Problem A

%(a)
vi = readtable('nlfit.csv');
disp(vi);

%(b)
[pf, S1] = polyfit(vi.V, vi.A, 1);

%(c) 
fprintf("I = %sV + %s\n", pf);

%(d)
subplot(2, 1, 1);
plot(vi.V, vi.A, 'o', vi.V, polyval(pf, vi.V));
xlabel('Voltage');
ylabel('Current');
title('I-V Characteristic');

%(e)
[R1, p1] = corrcoef(vi.V(2:end), vi.A(2:end));
fprintf('Correlation coefficient R = %g\n', R1(1, 2));
fprintf('P Value = %g\n', p1(1,2));

%(f)
vi2 = vi(2:end, :);
disp(vi2);

[pf2, S2] = polyfit(log(vi2.V), log(vi2.A), 1);

%(g)
fprintf("I = V^%s * e^%s\n", pf2);

%(h)
subplot(2, 1, 2);
scatter(vi2.V, vi2.A);
V = linspace(0, 100);
line(V, exp(pf2(2)) * V.^(pf2(1)),'Color','r');
xlabel('Voltage');
ylabel('Current');
title('Power Law');

saveas(gcf,'nlfit.pdf');

%(i)
[R, p] = corrcoef(log(vi2.V), log(vi2.A));
fprintf('Correlation coefficient R = %g\n', R(1, 2));
fprintf('P Value = %g\n', p(1,2));

% The second curve fits better.



