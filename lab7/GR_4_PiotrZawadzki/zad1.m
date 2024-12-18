
pkg load image;
clc;
clear;

I1 = imread('obraz1.jpg');
I2 = imread('obraz2.jpg');

%%%%%%

gauss = fspecial('gaussian', [5 5], 2);
I1uG = imfilter(I1, gauss);
I2uG = imfilter(I2, gauss);

figure;
subplot(1,2,1), imshow(I1uG), title("Zdjęcie 1 gauss");
subplot(1,2,2), imshow(I1), title("Zdjęcie 1");
imwrite(I1uG, "Zdjecie1gauss.jpg");

%figure;
%subplot(1,2,1), imshow(I2uG), title("Zdjęcie 2 gauss");
%subplot(1,2,2), imshow(I2), title("Zdjęcie 2");

%%%%%%%

%{

laplace = fspecial('laplacian', 0.01);
I1uL = imfilter(I1, laplace);
I2uL = imfilter(I2, laplace);

figure;
subplot(1,2,1), imshow(I1), title("Zdjęcie 1");
subplot(1,2,2), imshow(I1uL), title("Zdjęcie 1 laplace");

figure;
subplot(1,2,1), imshow(I2), title("Zdjęcie 2");
subplot(1,2,2), imshow(I2uL), title("Zdjęcie 2 laplace");
%}

%%%%%%%%

I1uSP = medfilt2(I1);
I2uSP = medfilt2(I2);

%figure;
%subplot(1,2,1), imshow(I1), title("Zdjęcie 1");
%subplot(1,2,2), imshow(I1uSP), title("Zdjęcie 1 S&P");

figure;
subplot(1,2,1), imshow(I2), title("Zdjęcie 2");
subplot(1,2,2), imshow(I2uSP), title("Zdjęcie 2 S&P");
imwrite(I2uSP, "Zdjecie2S&P.jpg");

%%%%%%%%%%%%%%

%{
sharp = fspecial('unsparp');
I1uS = imfilter(I1, sharp);
I2uS = imfilter(I2, sharp);

figure;
subplot(1,2,1), imshow(I1), title("Zdjecie 1");
subplot(1,2,2), imshow(I1uS), title("Zdjecie 1 sharp");

figure;
subplot(1,2,1), imshow(I2), title("Zdjecie 2");
subplot(1,2,2), imshow(I2uS), title("Zdjecie 2 sharp");

%}




