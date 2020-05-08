function out = part1(size,home,school)
out = zeros(size);
out = diag(ones(size-1,1),-1).*home + diag(ones(size-1,1),1).*school;
out(1) = 1;
out(2,1) = 0;
out(size,size) = 1;
out(size-1,size) = 0;
end

