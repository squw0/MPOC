pkg load image;
image_path = 'images_01.jpg';
I = imread(image_path);
if size(I, 3) == 3
    I = rgb2gray(I);
end
threshold = graythresh(I);
BW = im2bw(I, threshold);
BW = ~BW;
[L, num] = bwlabel(BW, 8);
for i = 1:num
    [rows, cols] = find(L == i);
    if any(rows == 1) || any(rows == size(BW, 1)) || any(cols == 1) || any(cols == size(BW, 2))
        L(L == i) = 0;
    end
end
BW_cleaned = L > 0;
BW_final = ~BW_cleaned;
figure;
subplot(1, 3, 1); imshow(BW); title('Oryginalny Obraz Binarny');
subplot(1, 3, 2); imshow(L > 0); title('Po Usunięciu Obiektów na Brzegach');
subplot(1, 3, 3); imshow(BW_final); title('Finalny Obraz');

