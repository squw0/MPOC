

pkg load image;
clc;
clear;

I1 = imread('obraz3.jpg');
I2 = imread('obraz4.jpg');

I1gray = rgb2gray(I1);
%I2gray = rgb2gray(I2);

%brighter = 50;
%I1bright = I1gray + brighter;
%I2bright = I2gray + brighter;

I1adjusted = histeq(I1gray, 256);
I2adjusted = histeq(I2, 256);

figure;
subplot(1,3,1), imshow(I1), title("Obraz 3");
%subplot(1,3,2), imshow(I1bright), title("Obraz 3 jasniejszy");
subplot(1,3,3), imshow(I1adjusted), title("Obraz 3 znormalizowany");


figure;
subplot(1,3,1), imshow(I2), title("Obraz 4");
%subplot(1,3,2), imshow(I2brighter), title("Obraz 4 jasniejszy");
subplot(1,3,3), imshow(I2adjusted), title("Obraz 4 znormalizowany");

imwrite(I1adjusted, "Obraz3znormalizowany.jpg");
imwrite(I2adjusted, "Obraz4znormalizowany.jpg");


