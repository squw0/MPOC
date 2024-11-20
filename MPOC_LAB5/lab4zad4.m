clc;
clear;
pkg load image;

I = imread('MPOC_04_obrazy/coins.png');

I_adj = I;

imadjust(I_adj, [0.2; 0.9], [], 0.75);

imshow(I);
figure;
imshow(I_adj);
