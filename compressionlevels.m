function compressionlevels(X)

% tol        drop(ratio)
% 10^-500    0
% 10         0.3989
% 210        0.8500
% 870        0.9501

[F1,drop]=compress(X,10^-500);
[F2,drop]= compress(X,10);
[F3,drop]=compress(X,210);
[F4,drop]=compress(X,870);

figure
subplot(2,2,1)
image(uint8(F1))
axis image
axis off
title('Plot 1: tolerance is 10^-500, drop ratio is 0')

subplot(2,2,2)
image(uint8(F2));
axis image;
axis off;
title('Plot 2: tolerance is 10, drop ratio is 0.3989')

subplot(2,2,3)
image(uint8(F3));
axis image;
axis off;
title('Plot 3: tolerance is 210, drop ratio is 0.8500')

subplot(2,2,4)
image(uint8(F4));
axis image;
axis off;
title('Plot 4: tolerance is 870, drop ratio is 0.9501')
