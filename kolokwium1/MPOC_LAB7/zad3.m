
pkg load image;
clc;
clear;

I1 = imread('Obraz_05a.png');
I1gray = rgb2gray(I1);

brighter = 50;
I1bright = I1gray + brighter;


I1adjusted = histeq(I1gray, 256);

figure;
subplot(1,3,1), imshow(I1), title("Obraz 5");
subplot(1,3,2), imshow(I1bright), title("Obraz 5 jasniejszy");
subplot(1,3,3), imshow(I1adjusted), title("Obraz 5 znormalizowany");
