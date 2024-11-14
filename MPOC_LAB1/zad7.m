input_image = imread('lenaRGB.tiff');

function display_rgb_components(input_image)
    if ndims(input_image) != 3 || size(input_image, 3) != 3
        error('Obraz musi być kolorowy');
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
    title('R');

    subplot(1, 3, 2);
    imshow(G_image);
    title('G');

    subplot(1, 3, 3);
    imshow(B_image);
    title('B');
end

display_rgb_components(input_image);
