pkg load image;

img6 = imread('obraz_06a.png');

% Poprawa jakości przy użyciu imadjust
img6_improved = imadjust(img6, [0.2 0.8], [0 1]); % Skalowanie intensywności


imwrite(img6_improved, 'obraz_06a_improved.png');





%*

pkg load image;

image6 = imread('D:\OM_MPOC\OMishchenko_Lab\Obraz_06a.jpg');

image6_adjusted = imadjust(image6);

figure;
subplot(1,2,1), imshow(image6), title('Oryginalny obraz 6');
subplot(1,2,2), imshow(image6_adjusted), title('Poprawiony obraz 6 (imadjust)');


%*
