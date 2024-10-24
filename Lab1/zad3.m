[I1, map1] = imread('autumn.tif');
[I2, map2] = imread('canoe.tif');
[I3, map3] = imread('4.1.05.BMP');
[I4, map4] = imread('4.1.06.jpg');
[I5, map5] = imread('4.1.06.tiff');
[I14, map14] = imread('lenaRGB.tiff');

images = {I1, I2, I3, I4, I5, I14};
maps = {map1, map2, map3, map4, map5, map14};
output_images = cell(1, length(images));

for i = 1:length(images)
    img = images{i};
    map = maps{i};

    fprintf('obraz: ', i);

    if ismatrix(img) && ~isempty(map)
        fprintf('obraz jest indeksowany');
        gray_image = ind2gray(img, map);
        rgb_image = ind2rgb(img, map);
        output_images{i} = rgb_image;

        figure;
        subplot(1, 2, 1);
        imshow(gray_image);
        title(sprintf('obraz w skali szarości', i));

        subplot(1, 2, 2);
        imshow(rgb_image);
        title(sprintf('obraz kolorowy', i));

    elseif ismatrix(img)
        fprintf('obraz w skali szarości');
        output_images{i} = img;

        figure;
        imshow(img);
        title(sprintf('obraz %d w skali szarości', i));

    elseif ndims(img) == 3 && size(img, 3) == 3
        fprintf('obraz jest kolorowy');
        output_images{i} = img;

        figure;
        imshow(img);
        title(sprintf('obraz kolorowy', i));

    else
        fprintf('błąd');
    end
end

