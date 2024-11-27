A = [1e-20, 1; 1, 1];
L_A = [1, 0; 1e20, 1];
U_A = [1e-20, 1; 0, 1 - 1e20];

% multiply
LU_A = L_A * U_A;

% error - do max twice to get a value out of both rows and columns
err_1 = max(max(abs(A-LU_A)));

% for matrix B
B = [1, 1; 1e-20, 1];
L_B = [1, 0; 1e-20, 1];
U_B = [1, 1; 0, 1 - 1e-20];

% multiply
LU_B = L_B * U_B;

% error
err_2 = max(max(abs(B-LU_B)));

% err_1 = 1 and err_2 = 0 so the error for B  is larger than the error for
% A, this means that A does not equal LU using floating point numbers on a 
% computer, and B does equal LU using floating point numbers on a computer.