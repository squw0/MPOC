
pkg load image;
clc;
clear;

I1 = imread('Obraz_04a.jpg');
I1gray = rgb2gray(I1);

I1contrast = imadjust(I1gray, stretchlim(I1gray), [0 1]);
I1h = histeq(I1gray);


figure;
subplot(1,3,1), imshow(I1), title("Obraz 4");
subplot(1,3,2), imshow(I1gray), title("Obraz 4 szary");
subplot(1,3,3), imshow(I1contrast), title("Obraz 4 kontrast");

