%liczenie poziomych bakterii a potem je na czerwono otoczyc
close all;
clear;
clc;
pkg load image;
I = imread('bakterie.jpg');
if size(I, 3) < 3
    disp('Obraz nie jest w kolorze RGB!');
    return;
end
R = I(:, :, 1);
G = I(:, :, 2);
B = I(:, :, 3);
mask = (G > R) & (G > B);
BW = ~mask;
BW = imfill(BW, 'holes');
[L, num] = bwlabel(BW);
stats = regionprops(L, 'Area', 'BoundingBox', 'MajorAxisLength', 'MinorAxisLength');
horizontalBacteria = [];

for i = 1:length(stats)
    if stats(i).MajorAxisLength / stats(i).MinorAxisLength > 2
        horizontalBacteria = [horizontalBacteria, i];
    end
end
numHorizontal = length(horizontalBacteria);
disp(['Liczba wszystkich bakterii: ', num2str(num)]);
disp(['Liczba poziomych bakterii: ', num2str(numHorizontal)]);
figure; imshow(BW); title('Poziome bakterie na obrazie');
hold on;
for i = horizontalBacteria
    rectangle('Position', stats(i).BoundingBox, 'EdgeColor', 'r', 'LineWidth', 2);
end
hold off;

