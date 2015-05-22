function F = DiscreteFT(f)
% Usage: F = DiscreteFT(f)
% Compute the discrete Fourier transform F
% of the complex vector f using the direct
% formula. F is the computed complex DFT.

L=length(f);
FF=f;
k=0;
while(k<L),
  p=0;
  n=0;
  while(n<L),
    p=p+f(n+1)*exp(-i*2*pi*k*n/L);
    n=n+1;
  end
  p=p/L;
  FF(k+1)=p;
  k=k+1;
end
    
F=FF;
