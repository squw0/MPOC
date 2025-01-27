
pkg load image;

I1 = imread('deszcz.jpg');
I2 = imread('wyspa.jpg');

suma1 = bitor(I1, I2);
figure;
imshow(suma1);
title("suma logiczna");

a = 0.5;
b = 0.5;
komb = imlincomb(a, I1, b, I2);
figure;
imshow(komb);
title('Kombinacja liniowa dwóch obrazów');



