input_image = imread('lenaRGB.tiff');

function display_rgb_components(input_image)
    if ndims(input_image) != 3 || size(input_image, 3) != 3
        error('Wejściowy obraz musi być kolorowy (3 kanały RGB).');
    end

    R = input_image(:,:,1);
    G = input_image(:,:,2);
    B = input_image(:,:,3);

    R_image = zeros(size(input_image), 'uint8');
    G_image = zeros(size(input_image), 'uint8');
    B_image = zeros(size(input_image), 'uint8');

    R_image(:,:,1) = R;
    G_image(:,:,2) = G;
    B_image(:,:,3) = B;

    figure;
    subplot(1, 3, 1);
    imshow(R_image);
    title('Składowa Czerwona (R)');

    subplot(1, 3, 2);
    imshow(G_image);
    title('Składowa Zielona (G)');

    subplot(1, 3, 3);
    imshow(B_image);
    title('Składowa Niebieska (B)');
end


display_rgb_components(input_image);
