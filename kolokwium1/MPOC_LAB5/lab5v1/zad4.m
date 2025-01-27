pkg load image;

I1 = imread('coins.png');
I2 = imread('tire.tif');
I3 = imread('pout.tif');
I4 = imread('moon.tif');
I5 = imread('cell.tif');

low_in = 0.1;
high_in = 0.9;
low_out = 0;
high_out = 1;
gamma = 1.2;

figure;
imshow(I1);
title(['Oryginalny obraz: ', I1]);

I_adjusted = imadjust(I, [low_in; high_in], [low_out; high_out], gamma);

figure;
imshow(I_adjusted);
title(['Poprawiony obraz: ', I1]);

figure;
imhist(I1);
title(['Histogram oryginalny: ', I1]);

figure;
imhist(I_adjusted);
title(['Histogram poprawiony: ', I1]);


