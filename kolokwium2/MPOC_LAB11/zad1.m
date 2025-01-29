% wyznacz i zaznacz najmniejszy  liczba obiektów mniejszych
close all; clear; clc; pkg load image;
I = imread('rice.png');
if size(I, 3) == 3
    I = rgb2gray(I);
end
figure; imhist(I); title('Histogram obrazu');
disp('Zwiększamy poziom progowania, aby wyodrębnić ryż');
disp('Wciśnij Enter, aby kontynuować...');
pause;
threshold = 120;
BW = I > threshold;
BW = imfill(BW, 'holes');
BW = imerode(BW, ones(3));
BW = imdilate(BW, ones(3));
[L, num] = bwlabel(BW);
s = regionprops(L, 'Area', 'BoundingBox');
areas = [s.Area];
[minArea, minIndex] = min(areas);
meanArea = mean(areas);
num_smaller_than_avg = sum(areas < meanArea);
disp(['Liczba obiektów: ', num2str(num)]);
disp(['Średnia powierzchnia obiektów: ', num2str(meanArea)]);
disp(['Liczba obiektów mniejszych od średniej: ', num2str(num_smaller_than_avg)]);
disp(['Najmniejszy obiekt ma powierzchnię: ', num2str(minArea)]);
figure; imshow(BW); title('Obiekty na obrazie');
hold on;
rectangle('Position', s(minIndex).BoundingBox, 'EdgeColor', 'r', 'LineWidth', 2);
hold off;

