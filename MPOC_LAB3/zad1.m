clc
clear

[I, map] = imread('MPOC_lab_02_Obrazy/MPOC_lab_02_Obrazy/lena256.bmp');

[I2,map] = imread('obraz.bmp');

Iw = bitand(I,I2);

I_negacja = 255 - I2;
Iw2 = bitand(I,I_negacja);

figure;
subplot(1,2,1), imshow(Iw), title('Iloczyn dwoch obrazow');
subplot(1,2,2), imshow(Iw2), title('Iloczyn dwoch obrazow po negacji jednego');

