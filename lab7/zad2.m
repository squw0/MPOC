pkg load image;

img4 = imread('Obraz_04a.jpg');
Igray = rgb2gray(img4);

% Poprawa kontrastu
img4_adjusted = imadjust(img4, stretchlim(img4), []); % Rozciąganie histogramu

% Opcjonalnie: wyrównywanie histogramu
img4_equalized = histeq(img4);

imwrite(img4_adjusted, 'Obraz_04a_adjusted.png');
imwrite(img4_equalized, 'Obraz_04a_equalized.png');




%*


pkg load image;
image4 = imread('D:\OM_MPOC\OMishchenko_Lab\Obraz_04a.jpg');

image4_contrast = imadjust(image4);

figure;
subplot(1,1,1), imshow(image4_contrast), title('Image 4 (Contrast Adjusted)');

%*
