clc
clear

[I, map] = imread('MPOC_lab_02_Obrazy/MPOC_lab_02_Obrazy/Tlo.bmp');

[I2,map] = imread('MPOC_lab_02_Obrazy/MPOC_lab_02_Obrazy/Ufok.bmp');

I = imresize(I, [size(I2,1), size(I2,2)]);

Iw = bitor(I,I2);

a = 0.5;
b = 0.5;

Iw2 = imlincomb(a, I, b, I2);

figure;
subplot(1,2,1), imshow(Iw), title('Suma dwoch obrazow');
subplot(1,2,2), imshow(Iw2), title('Z uzyciem kombinacji liniowej');
