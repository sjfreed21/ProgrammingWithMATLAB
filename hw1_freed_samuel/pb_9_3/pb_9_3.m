% Problem 9.3
% Samuel Freed

% (a)
A = zeros(4);
A(:,4) = 1:1:4

% (b)
A = zeros(4);
A(:,4) = 4:-1:1;
A(3,1:3) = [7 9 11]

% (c)
A = (A .* (mod(A,2) == 0) .* 3) + (A .* (mod(A,2) == 1) .* 2)

% (d)
A = zeros(5);
A = A + diag(0:2.5:10);
A(1:4,5) = 1

% (e)
for i = 0:5
    E(i+1) = power(2,i);
end
disp('E =');
disp(E);

% (f)
F = random('normal',0,5,5);
for i = 1:numel(F)
    if F(i) <= -1
        F(i) = -1;
    end
end
disp('F =');
disp(F);

% (g)
G = random('normal',0,5,5)
for i = 1:numel(G)
    if G(i) < 0
        G(i) = G(i) * 2;
    end
end
disp('G =');
disp(G);

% (h)
H1 = diag(0:4) + diag(2:2:8,-1) + diag(2:2:8,1) + diag(5:3:11,-2) + diag(5:3:11,2)
H2 = transpose(H1)
H1 == H2

% Alternatively (a.k.a. what I did before I reread the assignment
% directions)
% k = 0;
% for i = 1:length(H1)
%     for j = 1:length(H1)
%         if H1(i,j) == H1(j,i)
%             k = k + 1;
%         end
%     end
% end
% if k == i*j
%     disp('Symmetrical');
% end
% if k ~= i*j
%     disp('Not Symmetrical');
% end