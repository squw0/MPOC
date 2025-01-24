pkg load image;
clc;
clear;

I1 = imread('pout.tif');
I2 = imread('coins.png');
I3 = imread('tire.tif');
I4 = imread('AT3_1m4_01.tif');
I5 = imread('cell.tif');

% I1
figure;
subplot(1, 2, 1); imshow(I1); title('Oryginalny obraz: pout.tif');
subplot(1, 2, 2); imhist(I1); title('Histogram oryginalnego obrazu');

I_his1 = histeq(I1);
I_im1 = imadjust(I1);

figure;
subplot(1, 2, 1); imshow(I_his1); title('Z histogramem wyrównany');
subplot(1, 2, 2); imshow(I_im1); title('Z histogramem przesunięty');

% I2
figure;
subplot(1, 2, 1); imshow(I2); title('Oryginalny obraz: coins.png');
subplot(1, 2, 2); imhist(I2); title('Histogram oryginalnego obrazu');

I_his2 = histeq(I2);
I_im2 = imadjust(I2);

figure;
subplot(1, 2, 1); imshow(I_his2); title('Z histogramem wyrównany');
subplot(1, 2, 2); imshow(I_im2); title('Z histogramem przesunięty');

% I3
figure;
subplot(1, 2, 1); imshow(I3); title('Oryginalny obraz: tire.tif');
subplot(1, 2, 2); imhist(I3); title('Histogram oryginalnego obrazu');

I_his3 = histeq(I3);
I_im3 = imadjust(I3);

figure;
subplot(1, 2, 1); imshow(I_his3); title('Z histogramem wyrównany');
subplot(1, 2, 2); imshow(I_im3); title('Z histogramem przesunięty');

% I4
figure;
subplot(1, 2, 1); imshow(I4); title('Oryginalny obraz: AT3_1m4_01.tif');
subplot(1, 2, 2); imhist(I4); title('Histogram oryginalnego obrazu');

I_his4 = histeq(I4);
I_im4 = imadjust(I4);

figure;
subplot(1, 2, 1); imshow(I_his4); title('Z histogramem wyrównany');
subplot(1, 2, 2); imshow(I_im4); title('Z histogramem przesunięty');

% I5
figure;
subplot(1, 2, 1); imshow(I5); title('Oryginalny obraz: cell.tif');
subplot(1, 2, 2); imhist(I5); title('Histogram oryginalnego obrazu');

I_his5 = histeq(I5);
I_im5 = imadjust(I5);

figure;
subplot(1, 2, 1); imshow(I_his5); title('Z histogramem wyrównany');
subplot(1, 2, 2); imshow(I_im5); title('Z histogramem przesunięty');

