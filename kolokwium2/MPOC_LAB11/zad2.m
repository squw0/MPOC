% krwinki liczenie tylko całe
obrazie
close all; clear; clc; pkg load image;
I = imread('krwinki.jpg');
if size(I, 3) == 3
    I = rgb2gray(I);
end
I = imadjust(I, stretchlim(I), []);
threshold = 110;
BW = I < threshold;
BW = imfill(BW, 'holes');
[L, num] = bwlabel(BW);
stats = regionprops(L, 'Area', 'Perimeter', 'MajorAxisLength', 'MinorAxisLength', 'BoundingBox');
areas = [stats.Area];
perimeters = [stats.Perimeter];
majorAxis = [stats.MajorAxisLength];
minorAxis = [stats.MinorAxisLength];
meanArea = mean(areas);
meanPerimeter = mean(perimeters);
meanMajorAxis = mean(majorAxis);
meanMinorAxis = mean(minorAxis);
validObjects = (areas > meanArea) & (perimeters > meanPerimeter) & ...
               (majorAxis > meanMajorAxis) & (minorAxis > meanMinorAxis);
numValidCells = sum(validObjects);
disp(['Liczba wszystkich obiektów: ', num2str(num)]);
disp(['Liczba pełnych czerwonych krwinek: ', num2str(numValidCells)]);
figure; imshow(BW); title('Krwinki na obrazie');
hold on;
for i = 1:length(stats)
    if validObjects(i)
        rectangle('Position', stats(i).BoundingBox, 'EdgeColor', 'g', 'LineWidth', 2);
    end
end
hold off;

