input_image = imread('lenaRGB.tiff');

function gray_image = rgb2gray_weighted(input_image)
    R = double(input_image(:,:,1));
    G = double(input_image(:,:,2));
    B = double(input_image(:,:,3));

    gray_image = (11 * R + 16 * G + 5 * B) / 32;

    gray_image = uint8(gray_image);

    imshow(gray_image);
    title('szarawy obraz');
end

gray_image = rgb2gray_weighted(input_image);
