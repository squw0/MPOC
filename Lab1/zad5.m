input_image = imread('lenaRGB.tiff');

function gray_image = rgb2gray_weighted(input_image)
    if ndims(input_image) != 3 || size(input_image, 3) != 3
        error('Wejściowy obraz musi być kolorowy (3 kanały RGB).');
    end

    R = double(input_image(:,:,1));
    G = double(input_image(:,:,2));
    B = double(input_image(:,:,3));

    gray_image = (11 * R + 16 * G + 5 * B) / 32;

    gray_image = uint8(gray_image);

    imshow(gray_image);
    title('Obraz w odcieniach szarości (uwzględniając czułość oka)');
end


gray_image = rgb2gray_weighted(input_image);

