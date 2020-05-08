% Samuel Freed
% Problem B

P = .2*ones(5);
P = P-diag(diag(P));
A = sym(P);
[V,D] = eig(A);

disp('Eigenvalues:'); disp(diag(D));
disp('Eigenvectors:'); disp(V);