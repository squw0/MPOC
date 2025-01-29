pkg load image;
image_path = 'images_01.jpg';
I = imread(image_path);
if size(I, 3) == 3
    I = rgb2gray(I);
end
threshold = graythresh(I);
BW = im2bw(I, threshold);
BW_inverted = ~BW;
BW_filled = imfill(BW_inverted, 'holes');
BW_final = ~BW_filled;
figure;
subplot(1, 3, 1); imshow(BW); title('Obraz Binarny');
subplot(1, 3, 2); imshow(BW_filled); title('Dziury Wypełnione');
subplot(1, 3, 3); imshow(BW_final); title('Obiekty Wypełnione na Czarny');


