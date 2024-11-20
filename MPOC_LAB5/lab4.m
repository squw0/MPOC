clc;
clear;
pkg load image;
I_coins = imread('MPOC_04_obrazy/coins.png');

I = imread('MPOC_04_obrazy/office_1.jpg');
I2 = imread('MPOC_04_obrazy/office_6.jpg');

% Metoda 1 - wyrownanie histogramu
I_wyr = histeq(I_coins,128);

subplot(2,2,1), imshow(I_coins), title('Oryginal');
subplot(2,2,2), imhist(I_coins), title('histogram');
subplot(2,2,3), imshow(I_wyr), title('Po wyrownaniu');
subplot(2,2,4), imhist(I_wyr), title('Histogram po wyrownaniu');

% Metoda 2 - przesuniecie histogramu
I_move = I_coins - 64;
figure;
subplot(2,2,1), imshow(I_coins), title('Oryginal');
subplot(2,2,2), imhist(I_coins), title('histogram');
subplot(2,2,3), imshow(I_move), title('Po przesunieciu');
subplot(2,2,4), imhist(I_move), title('Histogram po przesunieciu');

[m1 m2] = minMax(I_coins);

m1;
m2;
