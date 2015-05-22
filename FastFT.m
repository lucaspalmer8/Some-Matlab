function F = FastFT(f)
% Usage: F = FastFT(f)
% Compute the discrete Fourier transform F
% of the complex column vector f using the
% fast Fourier transform method. F is a
% column vector containing the computed
% complex DFT.

N=length(f);
c=log2(N);
if c~=floor(c)
  error('Length is not power of two man!')
end
FF=f;

if c~=0
  %build g[n]
  g=zeros(N/2);
  ii=0;
  while ii<N/2,
    g(ii+1)=f(ii+1)+f(ii+1+N/2);
    ii=ii+1;
  end
  %build h[n]
  h=zeros(N/2);
  j=0;
  while j<N/2,
    h(j+1)=(f(j+1)-f(j+1+N/2))*exp(-i*2*pi*j/N);
    j=j+1;
  end
  
  Even=0.5*FastFT(g);
  Odd=0.5*FastFT(h);
  
  k=0;
  while k<N/2,
    FF(2*k+1)=Even(k+1);
    FF(2*k+2)=Odd(k+1);
    k=k+1;
  end
end

F=FF;
  
