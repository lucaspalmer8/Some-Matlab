function x = BackwardSubstitution(LU, y)
% Usage: x = BackwardSubstitution(LU, y)
% Perform backward substitution using the
% upper triangular portion of the matrix LU.

n = length(LU);
b = y;
for r = n:-1:1
  for c = r+1:n
    b(r) = b(r) - LU(r,c) * b(c);
  end
  if LU(r,r) == 0
    error('ERROR division by zero')
  end
  b(r) = b(r) / LU(r,r);
end

x = b;
