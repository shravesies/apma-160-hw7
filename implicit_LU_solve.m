function x = implicit_LU_solve(M,b)
n = length(b); % alternatively, [n, ~] = size(M);
y = b;
% forward sub to find y...

for i = 1:n
    for j = 1:i-1 
          y(i) = y(i) - M(i, j) * y(j);
    end
end


% y is computed, initialize x
x = y;
% backward sub to find x...

for i = n:-1:1
    for j = i+1:n
        x(i) = x(i) - M(i, j)*x(j);
    end
    
    x(i) = x(i)/M(i,i);
end


% DO NOT create any additional matrices inside this function!
end