function binary_image = progowanie2BW(image, t1, t2)
    if ndims(image) == 3
        image = rgb2gray(image);
    end
    binary_image = (image >= t1) & (image <= t2);
end

