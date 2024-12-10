
pkg load image;
clc;
clear;

I1 = imread('Obraz_05a.png');
I1gray = rgb2gray(I1);

I1adjusted = histeq(I1gray, 256);

figure;
subplot(1,2,1), imshow(I1), title("Obraz 5");
subplot(1,2,2), imshow(I1adjusted), title("Obraz 5 dopasowawny");
