x = [0 0 1 0 0 0]';
for i = 1:1/24:8
     if(i < 6)
         a = part1(6,1/3,2/3);
         x = a * x;
     end
     if(i >= 6)
         a = part1(6,2/3,1/3);
         x = a *x;
     end
end
disp(x);
