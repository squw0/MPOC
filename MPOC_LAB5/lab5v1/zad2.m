pkg load image


function stretched_image = histogramStretching(I, min_val, max_val)
    [f_min, f_max] = minMax(I);
    I = double(I);
    stretched_image = ((I - f_min) / (f_max - f_min)) * (max_val - min_val) + min_val;
    stretched_image = uint8(stretched_image);
end

I = imread('tire.tif');
[m1, m2] = minMax(I);
disp(['Minimalna wartość: ', num2str(m1)]);
disp(['Maksymalna wartość: ', num2str(m2)]);

figure;
imshow(I);
title('Oryginalny obraz');
figure;
imhist(I, 256);
title('Histogram oryginalnego obrazu');

min_val = 0;
max_val = 255;

I_stretch = histogramStretching(I, min_val, max_val);

figure;
imshow(I_stretch);
title('Obraz z rozciągniętym histogramem');
figure;
imhist(I_stretch, 256);
title('Histogram po rozciągnięciu');
