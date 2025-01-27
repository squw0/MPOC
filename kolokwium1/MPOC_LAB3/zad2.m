I1 = imread("KOLAAA.png");
I2 = imread("LENA256.BMP");


target_size = [256, 256];
I1_cropped = I1(1:target_size(1), 1:target_size(2));
I2_cropped = I2(1:target_size(1), 1:target_size(2));


suma1 = bitor(I1_cropped, I2_cropped);
figure;
imshow(suma1);
title("suma locziczna")

I1_neg = 255 - I1_cropped;
suma2 = bitor(I1_neg, I2_cropped);
figure;
imshow(suma2);
title("suma logiczna negatyw")
