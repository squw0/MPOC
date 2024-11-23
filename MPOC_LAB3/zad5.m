pkg load image

[I1,map] = imread('Tlo.bmp');
[I2,map] = imread('Ufok.bmp');

I1 = imresize(I1, [size(I2,1), size(I2,2)]);

Iw = bitor(I1,I2);
a = 0.5;
b = 0.5;

figure;
imshow(Iw);
title('Suma dwoch obrazow');


Iw2 = imlincomb(a, I1, b, I2);

figure;
imshow(Iw2);
title('Z uzyciem kombinacji liniowej');
