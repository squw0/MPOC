pkg load image;
clc;
clear;

I1 = imread('pout.tif');
I2 = imread('coins.png');
I3 = imread('tire.tif');
I4 = imread('AT3_1m4_01.tif');
I5 = imread('cell.tif');

% I1
fmin1 = double(min(I1(:)));
fmax1 = double(max(I1(:)));
I_stretched1 = (double(I1) - fmin1) / (fmax1 - fmin1) * 255;
I_stretched1 = uint8(I_stretched1);

figure;
subplot(1, 2, 1); imshow(I1); title('Oryginalny obraz: pout.tif');
subplot(1, 2, 2); imhist(I1); title('Histogram oryginalnego obrazu');

figure;
subplot(1, 2, 1); imshow(I_stretched1); title('Rozciągnięty histogram: pout.tif');
subplot(1, 2, 2); imhist(I_stretched1); title('Histogram rozciągnięty');

% I2
fmin2 = double(min(I2(:)));
fmax2 = double(max(I2(:)));
I_stretched2 = (double(I2) - fmin2) / (fmax2 - fmin2) * 255;
I_stretched2 = uint8(I_stretched2);

figure;
subplot(1, 2, 1); imshow(I2); title('Oryginalny obraz: coins.png');
subplot(1, 2, 2); imhist(I2); title('Histogram oryginalnego obrazu');

figure;
subplot(1, 2, 1); imshow(I_stretched2); title('Rozciągnięty histogram: coins.png');
subplot(1, 2, 2); imhist(I_stretched2); title('Histogram rozciągnięty');

% I3
fmin3 = double(min(I3(:)));
fmax3 = double(max(I3(:)));
I_stretched3 = (double(I3) - fmin3) / (fmax3 - fmin3) * 255;
I_stretched3 = uint8(I_stretched3);

figure;
subplot(1, 2, 1); imshow(I3); title('Oryginalny obraz: tire.tif');
subplot(1, 2, 2); imhist(I3); title('Histogram oryginalnego obrazu');

figure;
subplot(1, 2, 1); imshow(I_stretched3); title('Rozciągnięty histogram: tire.tif');
subplot(1, 2, 2); imhist(I_stretched3); title('Histogram rozciągnięty');

% I4
fmin4 = double(min(I4(:)));
fmax4 = double(max(I4(:)));
I_stretched4 = (double(I4) - fmin4) / (fmax4 - fmin4) * 255;
I_stretched4 = uint8(I_stretched4);

figure;
subplot(1, 2, 1); imshow(I4); title('Oryginalny obraz: AT3_1m4_01.tif');
subplot(1, 2, 2); imhist(I4); title('Histogram oryginalnego obrazu');

figure;
subplot(1, 2, 1); imshow(I_stretched4); title('Rozciągnięty histogram: AT3_1m4_01.tif');
subplot(1, 2, 2); imhist(I_stretched4); title('Histogram rozciągnięty');

% I5
fmin5 = double(min(I5(:)));
fmax5 = double(max(I5(:)));
I_stretched5 = (double(I5) - fmin5) / (fmax5 - fmin5) * 255;
I_stretched5 = uint8(I_stretched5);

figure;
subplot(1, 2, 1); imshow(I5); title('Oryginalny obraz: cell.tif');
subplot(1, 2, 2); imhist(I5); title('Histogram oryginalnego obrazu');

figure;
subplot(1, 2, 1); imshow(I_stretched5); title('Rozciągnięty histogram: cell.tif');
subplot(1, 2, 2); imhist(I_stretched5); title('Histogram rozciągnięty');

