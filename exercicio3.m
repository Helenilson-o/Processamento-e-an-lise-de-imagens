% Ler a imagem
A = imread('Printed-Circuit-Board.jpg');
A_gray = rgb2gray(A);

% Realizar o recorte
B = imcrop(A_gray, [80 200 100 100]);

% Redimensionar o corte para o tamanho da imagem original
B_resized = imresize(B, size(A_gray));

% Exibir as imagens
subplot(1, 2, 1);
imshow(A_gray);
title('Imagem original');
subplot(1, 2, 2);
imshow(B_resized);
title('Imagem do corte');