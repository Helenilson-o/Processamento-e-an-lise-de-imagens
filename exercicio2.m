% ler imagem
A = imread('Printed-Circuit-Board.jpg');
% Converter imagem de rgb para cinza
gray = rgb2gray(A);
%Salvar imagem em PNG
imwrite(uint8(gray), 'exec2_cinza.png', 'png');
%Exibir imagem
imshow(gray);