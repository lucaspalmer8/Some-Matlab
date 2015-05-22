function root = newton(f, fprime, x0, t)
% Usage: newton(f, fprime, x0, t)
% This method uses Newton's method to
% find roots of f (with derivative fprime)
% with tolerance t using initial estimate x0

if fprime(x0) == 0
  error('division by 0 in newtons method before tolerance is achieved')
end

a = x0;
b = a - f(a)/fprime(a)

while abs(b - a) >= t,
  if fprime(b) == 0
    error('division by 0 in newtons method before tolerance is achieved')
  end
  a = b;
  b = b - f(b)/fprime(b);
  disp(b)
end

root = b;
