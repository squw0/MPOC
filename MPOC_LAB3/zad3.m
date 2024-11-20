clc
clear
pkg load image;

[I, map] = imread('deszcz.jpg');

[I2,map] = imread('kwiaty.jpg');

Iw = bitor(I, I2);

a = 0.5;
b = 0.5;
Iw2 = imlincomb(a, I, b, I2);

figure;
subplot(1,2,1), imshow(Iw), title('Suma dwoch obrazow');
subplot(1,2,2), imshow(Iw2), title('Z uzyciem kombinacji liniowej');
