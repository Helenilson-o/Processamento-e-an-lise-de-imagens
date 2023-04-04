I = fitsread('solarspectra.fts');
I = rescale(I);
figure
imshow(I);
title('Imagem Original')
J = imrotate(I,-1,'bilinear','crop');
figure
imshow(J);
title('Imagem rotacionada');
