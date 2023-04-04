%----------------------Exercício 1------------------------

% Definir as dimensões da imagem
n = 256;
m = 256;

% Criar uma matriz de tabuleiro de xadrez
A = checkerboard(n/16);

% Redimensionar a matriz para o tamanho desejado
A = imresize(A, [n m]);

% Mostrar a imagem em uma figura
imshow(A);

% Salvar a imagem em um arquivo JPEG com qualidade de compressão de 75
imwrite(A, 'checkerboard.jpg', 'Quality', 75);