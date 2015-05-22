function result=Simpson(a,b,n,F)

x1=a;
total=0;
width=(b-a)/n;

for i=1:n
  total=total+(F(x1)+4*F(x1+width/2)+F(x1+width))*width/6;
  x1=x1+width;
end

result=total;

