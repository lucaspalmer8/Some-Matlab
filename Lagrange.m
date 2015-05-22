function fxg=Lagrange(totalPoints,xValues,fValues,xg)

sum1=0;

for j=0:totalPoints-1
  pro=fValues(j+1);
  for i=0:totalPoints-1
    if i~=j
      pro=pro*(xg-xValues(i+1))/(xValues(j+1)-xValues(i+1));
    end
  end
  sum1=sum1+pro;
end

fxg=sum1;
