function x = forwardsub_col_major(L, b)
n = length(b); % alternatively, [n, ~] = size(L)
x = b;

% complete file peforming forward-substitution in a column-major optimal fashion

for j = 1:n
    x(j) = x(j)/L(j,j);

    for i = j+1:n
        x(i) = x(i) - L(i, j)*x(j);
    end
end

end