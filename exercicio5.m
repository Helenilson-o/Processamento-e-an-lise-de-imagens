% Ler a imagem RGB
img_rgb = imread('Printed-Circuit-Board.jpg');

% Converter para YCbCr
img_ycbcr = rgb2ycbcr(img_rgb);

% Redimensionar para 1000x1000 pixels
img_redimensionada = imresize(img_ycbcr, [1000 1000]);
img_redimensionadaRGB = imresize(img_rgb, [1000 1000]);
% Converter de volta para RGB
img_rgb_redimensionada = ycbcr2rgb(img_redimensionada);

% Salvar a imagem no formato PNG
imwrite(uint8(img_rgb_redimensionada), 'imagem_RGB.png', 'png');
imwrite(uint8(img_redimensionadaRGB), 'imagem_YcBcr.png', 'png');
imshow(img_rgb_redimensionada);
