function LU = LUFactorization(A)
% Usage: LU = LUFactorization(A)
% Compute the LU factorization of the matrix A
% and return the resulting factorized matrix.

n = length(A);
U = A;
for p = 1:n-1
  for r = p+1:n
    if U(p,p) == 0
      error('ERROR division by 0')
    end
    m = -U(r,p)/U(p,p);
    U(r,p) = 0;
    for c = p+1:n
      U(r,c) = U(r,c) + m * U(p,c);
    end
    U(r,p) = -m;
  end
end

LU = U;
