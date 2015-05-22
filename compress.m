function [Y, drop] = compress(X, tol)
% Usage: [Y, drop] = compress(X, tol)
% Compute a compressed image ’Y’ from an
% original input image ’X’ by dropping
% Fourier modes with modulus smaller
% than tolerance parameter ’tol’. The
% drop ratio is also returned via the
% parameter ’drop’.

drops=0;
s=size(X)


for d1=1:s(3)
  for d2=1:s(1)/8
    for d3=1:s(2)/8
      psquare=X(d2*8-7:d2*8,d3*8-7:d3*8,d1);
      psquare=fft2(single(psquare));
      for i=1:8
        for j=1:8
          if abs(psquare(i,j))<tol
            psquare(i,j)=0;
            drops=drops+1;
          end
        end
      end
      X(d2*8-7:d2*8,d3*8-7:d3*8,d1)=real(ifft2(psquare));
    end
  end
end


drop=drops/(s(1)*s(2)*s(3));
Y=X;
figure(1)
image(uint8(Y))
axis image
axis off

