function root = bisection(f, a, b, t)
% Usage: bisection(f, a, b, t)
% This method uses bisection to find roots of
% f in the interval [a,b] with tolerance t.

if f(a)*f(b) > 0
  error('wrong initial conditions')
end

while abs(b-a) > t, 
  c = (a+b)/2;
  if f(c) == 0
    root = c;
    return
  end
  if f(a)*f(c) < 0
    b = c;
  else
    a = c;
  end
  %disp((a+b)/2)
end
root = (a+b)/2;
    
