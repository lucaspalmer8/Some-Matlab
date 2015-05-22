function root = fixedpoint(g, x0, t)
% Usage: fixedpoint(g, x0, t)
% This method uses fixed point iteration to
% find fixed points of g with tolerance t
% using initial extimate x0

a = x0;
b = g(x0);
disp(b)

while abs(b-a) >= t,
  temp = b;
  b = g(b);
  a = temp;
  %disp(b)
end

root = b;
  
