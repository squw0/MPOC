pkg load image
image = imread('4.1.05_gray.jpg');
figure(2);
imhist(image);
title('Histogram obrazu');
disp('Kliknij dwukrotnie na histogramie, aby wybrać dwie wartości progowe...');
[x, ~] = ginput(2);
t1 = round(min(x));
t2 = round(max(x));
disp(['Wybrane progi: t1 = ', num2str(t1), ', t2 = ', num2str(t2)]);
binary_image = progowanie2BW(image, t1, t2);
figure(3);
imshow(binary_image);
title(['Obraz binarny (Przedział: [', num2str(t1), ', ', num2str(t2), '])']);
