pkg load image
image = imread('LENA256.BMP');
figure(1);
imshow(image);
title('Oryginalny obraz');
figure(2);
imhist(image);
title('Histogram obrazu');
disp('kliknij histogram aby wybrać wartość progową');
[x, ~] = ginput(1);
threshold = round(x);
disp(['Wybrana wartość progowa: ', num2str(threshold)]);
binary_image = progowanieBW(image, threshold);
figure(3);
imshow(binary_image);
title(['Obraz binarny (Próg = ', num2str(threshold), ')']);

