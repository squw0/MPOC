I1 = imread("KOLAAA.png");
I2 = imread("LENA256.BMP");


target_size = [256, 256];
I1_cropped = I1(1:target_size(1), 1:target_size(2));
I2_cropped = I2(1:target_size(1), 1:target_size(2));


Iloczyn1 = bitand(I1_cropped, I2_cropped);
figure;
imshow(Iloczyn1);
title("iloczyn obrazów")



I1_neg = 255 - I1_cropped;
Iloczyn2 = bitand(I1_neg, I2_cropped);
figure;
imshow(Iloczyn2);
title("iloczyn z negatywem")

