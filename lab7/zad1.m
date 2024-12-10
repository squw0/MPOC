

pkg load image;
clc;
clear;

I1 = imread('Obraz_01a.png');
I2 = imread('Obraz_02a.png');
I3 = imread('Obraz_03a.png');

figure;
subplot(1,3,1), imshow(I1), title("Obraz 1 oryginał");
subplot(1,3,2), imshow(I2), title("Obraz 2 oryginał");
subplot(1,3,3), imshow(I3), title("Obraz 3 oryginał");

%%%%

gauss = fspecial('gaussian', [5 5], 2);
I1uG = imfilter(I1, gauss);
I2uG = imfilter(I2, gauss);
I3uG = imfilter(I3, gauss);

figure;
subplot(1,3,1), imshow(I1uG), title("Obraz 1 gauss");
subplot(1,3,2), imshow(I2uG), title("Obraz 2 gauss");
subplot(1,3,3), imshow(I3uG), title("Obraz 3 gauss");

%%%%

laplace = fspecial('laplacian', 0.01);
I1uL = imfilter(I1, laplace);
I2uL = imfilter(I2, laplace);
I3uL = imfilter(I3, laplace);

figure;
subplot(1,3,1), imshow(I1uL), title("Obraz 1 laplace");
subplot(1,3,2), imshow(I2uL), title("Obraz 2 laplace");
subplot(1,3,3), imshow(I3uL), title("Obraz 3 laplace");


%%%%

I1uSP = medfilt2(I1);
I2uSP = medfilt2(I2);
I3uSP = medfilt2(I3);

figure;
subplot(1,3,1), imshow(I1uSP), title("Obraz 1 s&p");
subplot(1,3,2), imshow(I2uSP), title("Obraz 2 s&p");
subplot(1,3,3), imshow(I3uSP), title("Obraz 3 s&p");


