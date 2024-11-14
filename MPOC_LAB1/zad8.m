input_image = imread('lenaRGB.tiff');

zdjecie1 = flipud(input_image); #flip up/down pozioma
zdjecie2 = fliplr(input_image); #flip left/right pionowa

subplot(1, 3, 1); #liczba wierszy 1, liczba kolumn 3, miejsce 1
imshow(zdjecie1);
title('oś pozioma');

subplot(1, 3, 2);
imshow(zdjecie2);
title('oś pionowa');

subplot(1, 3, 3);
imshow(input_image);
title('oryginał');

