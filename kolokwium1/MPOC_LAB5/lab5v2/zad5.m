pkg load image;
clc;
clear;

I1 = imread('pout.tif');
I2 = imread('coins.png');
I3 = imread('tire.tif');
I4 = imread('AT3_1m4_01.tif');
I5 = imread('cell.tif');

function I_clipped = clip_histogram(I, clip_percent)
    [counts, bin_locations] = imhist(I);
    total_pixels = sum(counts);
    cumulative_counts = cumsum(counts);
    min_index = find(cumulative_counts > clip_percent * total_pixels, 1, 'first');
    max_index = find(cumulative_counts >= (1 - clip_percent) * total_pixels, 1, 'first');
    min_val = bin_locations(min_index);
    max_val = bin_locations(max_index);
    I_clipped = (double(I) - double(min_val)) / (double(max_val) - double(min_val)) * 255;
    I_clipped = uint8(max(min(I_clipped, 255), 0));
end


% I1
I_histeq1 = histeq(I1);
I_adjusted1 = imadjust(I1);
I_clipped1 = clip_histogram(I1, 0.05);

figure;
subplot(2, 2, 1); imshow(I1); title('Oryginalny obraz: pout.tif');
%subplot(2, 2, 2); imshow(I_histeq1); title('Wyrównanie histogramu');
subplot(2, 2, 3); imshow(I_adjusted1); title('Przesunięcie histogramu');
%subplot(2, 2, 4); imshow(I_clipped1); title('Obcięcie histogramu');

% I2
I_histeq2 = histeq(I2);
I_adjusted2 = imadjust(I2);
I_clipped2 = clip_histogram(I2, 0.05);

figure;
subplot(2, 2, 1); imshow(I2); title('Oryginalny obraz: coins.png');
%subplot(2, 2, 2); imshow(I_histeq2); title('Wyrównanie histogramu');
subplot(2, 2, 3); imshow(I_adjusted2); title('Przesunięcie histogramu');
%subplot(2, 2, 4); imshow(I_clipped2); title('Obcięcie histogramu');

% I3
I_histeq3 = histeq(I3);
I_adjusted3 = imadjust(I3);
I_clipped3 = clip_histogram(I3, 0.05);

figure;
subplot(2, 2, 1); imshow(I3); title('Oryginalny obraz: tire.tif');
%subplot(2, 2, 2); imshow(I_histeq3); title('Wyrównanie histogramu');
subplot(2, 2, 3); imshow(I_adjusted3); title('Przesunięcie histogramu');
%subplot(2, 2, 4); imshow(I_clipped3); title('Obcięcie histogramu');

% I4
I_histeq4 = histeq(I4);
I_adjusted4 = imadjust(I4);
I_clipped4 = clip_histogram(I4, 0.05);

figure;
subplot(2, 2, 1); imshow(I4); title('Oryginalny obraz: AT3_1m4_01.tif');
%subplot(2, 2, 2); imshow(I_histeq4); title('Wyrównanie histogramu');
subplot(2, 2, 3); imshow(I_adjusted4); title('Przesunięcie histogramu');
%subplot(2, 2, 4); imshow(I_clipped4); title('Obcięcie histogramu');

% I5
I_histeq5 = histeq(I5);
I_adjusted5 = imadjust(I5);
I_clipped5 = clip_histogram(I5, 0.05);

figure;
subplot(2, 2, 1); imshow(I5); title('Oryginalny obraz: cell.tif');
%subplot(2, 2, 2); imshow(I_histeq5); title('Wyrównanie histogramu');
subplot(2, 2, 3); imshow(I_adjusted5); title('Przesunięcie histogramu');
%subplot(2, 2, 4); imshow(I_clipped5); title('Obcięcie histogramu');

