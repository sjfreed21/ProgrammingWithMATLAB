% Samuel Freed
% Problem A

[A,B] = meshgrid(0:0.001:1,0:0.001:1);
Z = A + B - (A.^3 + B.^3);
[C,h] = contourf(A,B,Z);
colorbar;
clabel(C,h);
maxz = max(max(Z));
maxa = A(Z==maxz);
maxb = B(Z==maxz);
text(maxa, maxb, ['\bullet', num2str(maxz)])
title('\alpha+\beta-(\alpha^3+\beta^3)')
xlabel('\alpha');
ylabel('\beta');