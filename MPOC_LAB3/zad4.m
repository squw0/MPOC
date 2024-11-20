pkg load image

[I, map] = imread('LENA256.bmp');

[I2,map] = imread('KOLAAA.bmp');

Iw = bitxor(I, I2);

Iw2 = bitxor(I, Iw);

figure;
subplot(1,2,1), imshow(Iw), title('Alternatywa rozlaczna dwoch obrazow');
subplot(1,2,2), imshow(Iw2), title('Alternatywa obrazu lena256 i obrazu po lewej');
