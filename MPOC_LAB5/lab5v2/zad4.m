pkg load image;
clc;
clear;

I1 = imread('pout.tif');
I2 = imread('coins.png');
I3 = imread('tire.tif');
I4 = imread('AT3_1m4_01.tif');
I5 = imread('cell.tif');

I_adjusted1 = imadjust(I1, stretchlim(I1), []);

figure;
subplot(1, 2, 1); imshow(I1); title('Oryginalny obraz: pout.tif');
subplot(1, 2, 2); imshow(I_adjusted1); title('Obraz po imadjust');

% I2
I_adjusted2 = imadjust(I2, stretchlim(I2), []);

figure;
subplot(1, 2, 1); imshow(I2); title('Oryginalny obraz: coins.png');
subplot(1, 2, 2); imshow(I_adjusted2); title('Obraz po imadjust');

% I3
I_adjusted3 = imadjust(I3, stretchlim(I3), []);

figure;
subplot(1, 2, 1); imshow(I3); title('Oryginalny obraz: tire.tif');
subplot(1, 2, 2); imshow(I_adjusted3); title('Obraz po imadjust');

% I4
I_adjusted4 = imadjust(I4, stretchlim(I4), []);

figure;
subplot(1, 2, 1); imshow(I4); title('Oryginalny obraz: AT3_1m4_01.tif');
subplot(1, 2, 2); imshow(I_adjusted4); title('Obraz po imadjust');

% I5
I_adjusted5 = imadjust(I5, stretchlim(I5), []);

figure;
subplot(1, 2, 1); imshow(I5); title('Oryginalny obraz: cell.tif');
subplot(1, 2, 2); imshow(I_adjusted5); title('Obraz po imadjust');

