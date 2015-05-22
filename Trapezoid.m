function result=Trapezoid(a,b,n,F)

x1=a;
total=0;
width=(b-a)/n;

for i=1:n
  total=total+(F(x1)+F(x1+width))*width/2;
  x1=x1+width;
end

result=total;   
