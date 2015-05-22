function x = GaussSeidel(A, b, x0, tol)
% Usage: x = GaussSeidel(A, b, x0, tol)
% Perform Gauss-Seidel iteration on the
% matrix A to solve Ax = b using the
% initial estimate x0.

v = 0;
d = x0;
n = length(x0);
t = 10000;
while t > tol,
  v = v+1; 
  for i=1:n
    sum1 = 0;
    for j = 1:i-1
      sum1 = sum1+A(i,j)*d(j);
    end
    sum2 = 0;
    for j = i+1:n
      sum2 = sum2+A(i,j)*x0(j);
    end
    if A(i,i) == 0
      error('ERROR division by zero')
    end    
    d(i) = (1/A(i,i))*(b(i)-sum1-sum2);
  end
  if norm(A*x0-b) == 0
    error('ERROR division by zero')
  end
  t = (norm(A*d-b))/(norm(A*x0-b));
end
x = d;
