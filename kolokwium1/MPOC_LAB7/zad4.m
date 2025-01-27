%{
pkg load image;
clc;
clear;

I1 = imread('Obraz_06a.jpg');
I1gray = rgb2gray(I1);

I1adjusted = imadjust(I1gray, stretchlim(I1gray),[0 1]);

figure;
imshow(I1adjusted);
title("Obraz 6 imadjust");

%}

pkg load image;

I1 = imread('Obraz_06a.jpg');

I1adj = imadjust(I1);

figure;
subplot(1,2,1), imshow(I1), title('Obraz 6');
subplot(1,2,2), imshow(I1adj), title('Obraz 6 adjusted');

