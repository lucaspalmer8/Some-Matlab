function root = secant(f, x0, x1, t)
% Usage: secant(f, x0, x1, t)
% THis method uses the secant method to
% find roots of f using initial estimates
% x0 and x1

a = x0;
b = x1;

while abs(b - a) >= t,
  if f(b) - f(a)  == 0
  error('division by 0 in secant method before tolerance is achieved')
  end
  temp = b;
  b = b - f(b)*(b - a)/(f(b) - f(a));
  a = temp;
  %disp(b)
end

root = b;
