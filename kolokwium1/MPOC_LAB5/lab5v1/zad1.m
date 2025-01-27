
pkg load image

I1 = imread('coins.png');
I2 = imread('tire.tif');
I3 = imread('pout.tif');
I4 = imread('moon.tif');
I5 = imread('cell.tif');


%obraz 1
imshow(I1);
title('oryginalny obraz')
figure;
imhist(I1,256);
title('oryginalny obraz histogram')
I_eq1 = histeq(I1, 256);
figure;
imshow(I_eq1);
title('obraz z wyrównanym histogramem')
figure;
imhist(I_eq1, 256);
title('wyrównany histogram')


%obraz 2
imshow(I2);
title('oryginalny obraz')
figure;
imhist(I2,256);
title('oryginalny obraz histogram')
I_eq2 = histeq(I2, 256);
figure;
imshow(I_eq2);
title('obraz z wyrównanym histogramem')
figure;
imhist(I_eq2, 256);
title('wyrównany histogram')


%obraz 3
imshow(I3);
title('oryginalny obraz')
figure;
imhist(I3,256);
title('oryginalny obraz histogram')
I_eq3 = histeq(I3, 256);
figure;
imshow(I_eq3);
title('obraz z wyrównanym histogramem')
figure;
imhist(I_eq3, 256);
title('wyrównany histogram')


%obraz 4
imshow(I4);
title('oryginalny obraz')
figure;
imhist(I4,256);
title('oryginalny obraz histogram')
I_eq4 = histeq(I4, 256);
figure;
imshow(I_eq4);
title('obraz z wyrównanym histogramem')
figure;
imhist(I_eq4, 256);
title('wyrównany histogram')


%obraz 5
imshow(I5);
title('oryginalny obraz')
figure;
imhist(I5,256);
title('oryginalny obraz histogram')
I_eq5 = histeq(I5, 256);
figure;
imshow(I_eq5);
title('obraz z wyrównanym histogramem')
figure;
imhist(I_eq5, 256);
title('wyrównany histogram')
