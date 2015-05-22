function y = ForwardSubstitution(LU, b)
% Usage: y = ForwardSubstitution(LU, b)
% Perform forward substitution using the unit
% lower triangular portion of the matrix LU.

n = length(LU);
x = b;
for r = 2:n
  for c = 1:r-1
    x(r) = x(r) - LU(r,c) * x(c);
  end
end

y = x;
