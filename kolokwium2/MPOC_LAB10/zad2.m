clc; clear; close all;
pkg load image;
image_path = 'images_04.jpg';
I = imread(image_path);
if size(I,3) == 3
    I = rgb2gray(I);
end
threshold = graythresh(I);
BW = im2bw(I, threshold);
BW = ~BW;
se = ones(3,3);
BW_cleaned = imerode(BW, se);
BW_cleaned = imdilate(BW_cleaned, se);
D = -bwdist(~BW_cleaned);
mask = imextendedmin(D, 2);
D2 = imimposemin(D, mask);
L = watershed(D2);
BW_final = BW_cleaned;
BW_final(L == 0) = 0;
figure;
subplot(2,3,1); imshow(I); title('Oryginalny Obraz');
subplot(2,3,2); imshow(BW); title('Obraz Binarny');
subplot(2,3,3); imshow(BW_cleaned); title('Po Usunięciu Szumu');
subplot(2,3,4); imshow(D, []); title('Transformacja Odległościowa');
subplot(2,3,5); imshow(L, []); title('Segmentacja Watershed');
subplot(2,3,6); imshow(BW_final); title('Finalne Rozdzielone Obiekty');

