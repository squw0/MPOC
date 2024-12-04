pkg load image;
clc;
clear;


img1 = imread('obraz_01a.png');
img2 = imread('obraz_02a.png');
img3 = imread('obraz_03a.png');

figure, imshow(img1), title('Oryginał - Obraz 1');
figure, imshow(img2), title('Oryginał - Obraz 2');
figure, imshow(img3), title('Oryginał - Obraz 3');

% === Filtracja dla obrazu 1 - Filtr Medianowy ===
filtered_img1 = medfilt2(img1); % Usuwanie szumu impulsowego (sol-i-pieprz)
imwrite(filtered_img1, 'obraz_01a_filtered.png');
figure, imshow(filtered_img1), title('Filtr Medianowy - Obraz 1');

% === Filtracja dla obrazu 2 - Filtr Gaussowski ===
gaussian_filter = fspecial('gaussian', [5 5], 2); % Rozmiar filtra 5x5, sigma = 2
filtered_img2 = imfilter(img2, gaussian_filter, 'replicate'); % 'replicate' do obsługi brzegów
imwrite(filtered_img2, 'obraz_02a_filtered.png');
figure, imshow(filtered_img2), title('Filtr Gaussowski - Obraz 2');

% === Filtracja dla obrazu 3 - Wyostrzanie ===
sharpening_filter = fspecial('unsharp'); % Filtr do wyostrzania
filtered_img3 = imfilter(img3, sharpening_filter, 'replicate'); % Wyostrz obraz
imwrite(filtered_img3, 'obraz_03a_filtered.png');
figure, imshow(filtered_img3), title('Filtr Wyostrzający - Obraz 3');





%*
pkg load image;

image1 = imread('D:\OM_MPOC\OMishchenko_Lab\Obraz_01a.png');
image2 = imread('D:\OM_MPOC\OMishchenko_Lab\Obraz_02a.png');
image3 = imread('D:\OM_MPOC\OMishchenko_Lab\Obraz_03a.png');



h = fspecial('gaussian', [5, 5], 2);
image1_filtered = imfilter(image1, h);
image2_filtered = imfilter(image2, h);
image3_filtered = imfilter(image3, h);



image1_median = medfilt2(image1, [3, 3]);
image2_median = medfilt2(image2, [3, 3]);
image3_median = medfilt2(image3, [3, 3]);


figure;
subplot(2,3,1), imshow(image1_filtered), title('Image 1 (Gaussian Filter)');
subplot(2,3,2), imshow(image2_filtered), title('Image 2 (Gaussian Filter)');
subplot(2,3,3), imshow(image3_filtered), title('Image 3 (Gaussian Filter)');
subplot(2,3,4), imshow(image1_median), title('Image 1 (Median Filter)');
subplot(2,3,5), imshow(image2_median), title('Image 2 (Median Filter)');
subplot(2,3,6), imshow(image3_median), title('Image 3 (Median Filter)');



%*
