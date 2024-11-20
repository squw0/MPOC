clear;
clc;

I = imread('MPOC_04_obrazy/coins.png');

I_roz = I;

[I_min I_max] = minMax(I_roz);
I_roz(:) = (I_roz(:) - I_min )/(I_max - I_min);
I_roz(:) = I_roz(:) * (I_max - I_min) + I_min;

imshow(I);
figure;
imshow(I_roz);
