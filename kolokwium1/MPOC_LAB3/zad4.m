pkg load image

[I1,map] = imread('LENA256.bmp');
[I2,map] = imread('KOLAAA.png');

target_size = [256, 256];
I1_cropped = I1(1:target_size(1), 1:target_size(2));
I2_cropped = I2(1:target_size(1), 1:target_size(2));


Iw = bitxor(I1_cropped, I2_cropped);
figure;
imshow(Iw);
title("alternatywa rozłączna")


Iw2 = bitxor(Iw, I1);
figure;
imshow(Iw2);
title("alternatywa rozłączna z obrazem wynikowym")
