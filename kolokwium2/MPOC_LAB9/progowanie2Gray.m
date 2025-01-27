
function result_image = progowanie2Gray(image, t1, t2, color)
    if ndims(image) == 3
        image = rgb2gray(image);
    end

    result_image = image;

    result_image(image < t1 | image > t2) = color;
end

