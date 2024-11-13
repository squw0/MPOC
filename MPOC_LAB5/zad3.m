

function [f_min, f_max] = minMaxTrimmed(I, trim_percent)
    pixel_counts = imhist(I);
    total_pixels = numel(I);
    trim_pixels = round(trim_percent * total_pixels);
    cumulative_sum = cumsum(pixel_counts);
    f_min = find(cumulative_sum > trim_pixels, 1, 'first') - 1;
    cumulative_sum_reverse = cumsum(flip(pixel_counts));
    f_max = 255 - find(cumulative_sum_reverse > trim_pixels, 1, 'first') + 1;
end

function stretched_image = histogramStretchingTrimmed(I, min_val, max_val, trim_percent)
    [f_min, f_max] = minMaxTrimmed(I, trim_percent);
    I = double(I);
    stretched_image = ((I - f_min) / (f_max - f_min)) * (max_val - min_val) + min_val;
    stretched_image = max(min(stretched_image, max_val), min_val);
    stretched_image = uint8(stretched_image);
end

I = imread('tire.tif');
figure;
imshow(I);
title('Oryginalny obraz');
figure;
imhist(I, 256);
title('Histogram oryginalnego obrazu');
min_val = 0;
max_val = 255;
trim_percent = 0.05;
I_stretch_trimmed = histogramStretchingTrimmed(I, min_val, max_val, trim_percent);
figure;
imshow(I_stretch_trimmed);
title('Obraz z rozciągniętym histogramem (obcięcie 5%)');
figure;
imhist(I_stretch_trimmed, 256);
title('Histogram po rozciągnięciu (obcięcie 5%)');

