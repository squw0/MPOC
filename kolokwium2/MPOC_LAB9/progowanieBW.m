function binary_image = progowanieBW(image, threshold)
    if ndims(image) == 3
        image = rgb2gray(image);
    end

    binary_image = image > threshold;
end

