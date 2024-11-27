function x = forwardsub_row_major(L, b)
n = length(b); % alternatively, [n, ~] = size(L)
x = b;

% complete file peforming forward-substitution in a row-major optimal fashion

for i = 1:n
    x(i) = x(i)/L(i,i);

    for j = i+1:n
        x(j) = x(j) - L(j, i)*x(i);
    end
end

end