pkg load image;
clc;
clear;

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

I1 = imread('pout.tif');
I2 = imread('coins.png');
I3 = imread('tire.tif');
I4 = imread('AT3_1m4_01.tif');
I5 = imread('cell.tif');

clip_percent = 0.05;

% I1
I_clipped1 = clip_histogram(I1, clip_percent);

figure;
subplot(1, 2, 1); imshow(I1); title('Oryginalny obraz: pout.tif');
subplot(1, 2, 2); imshow(I_clipped1); title('Obraz po obcięciu histogramu');

% I2
I_clipped2 = clip_histogram(I2, clip_percent);

figure;
subplot(1, 2, 1); imshow(I2); title('Oryginalny obraz: coins.png');
subplot(1, 2, 2); imshow(I_clipped2); title('Obraz po obcięciu histogramu');

% I3
I_clipped3 = clip_histogram(I3, clip_percent);

figure;
subplot(1, 2, 1); imshow(I3); title('Oryginalny obraz: tire.tif');
subplot(1, 2, 2); imshow(I_clipped3); title('Obraz po obcięciu histogramu');

% I4
I_clipped4 = clip_histogram(I4, clip_percent);

figure;
subplot(1, 2, 1); imshow(I4); title('Oryginalny obraz: AT3_1m4_01.tif');
subplot(1, 2, 2); imshow(I_clipped4); title('Obraz po obcięciu histogramu');

% I5
I_clipped5 = clip_histogram(I5, clip_percent);

figure;
subplot(1, 2, 1); imshow(I5); title('Oryginalny obraz: cell.tif');
subplot(1, 2, 2); imshow(I_clipped5); title('Obraz po obcięciu histogramu');

