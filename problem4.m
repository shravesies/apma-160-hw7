% resistance values
R1 = 15; 
R2 = 20; 
R3 = 6;
R4 = 18; 
R5 = 25; 
R6 = 30;

% matrix A if Ij is our unknowns
A = [R6+R1+R2, -R1, -R2;
    -R1, R3+R4+R1, -R4;
    -R2, -R4, R5+R4+R2];

% LU factorization
[L, U] = lu(A);

% voltages
V1 = 50;
% V2 = k defined later in for loop
V3 = 75;

I_vals = zeros(3, 100);

% Ax = b

for k= 1:100
    V2 = k;
    b = [V1; V2; V3];

% forward sub L*y = b
 
    y = L \ b;

% backwards sub U*x = y

    x = U \ y;

I_vals(:, k) = x; 

end

