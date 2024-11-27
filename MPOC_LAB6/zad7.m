
input_image = imread('peppers.png');
k = 3;

input_image = double(input_image);
[rows, cols] = size(input_image);

output_image = zeros(rows, cols);


window_size = 2 * k - 1;
half_window = floor(window_size / 2);

for i = 1 + half_window:rows - half_window
  for j = 1 + half_window:cols - half_window
    neighborhood = input_image(i-half_window:i+half_window, j-half_window:j+half_window);

    W1 = neighborhood(1:k, 1:k);
    W2 = neighborhood(1:k, k:end);
    W3 = neighborhood(k:end, 1:k);
    W4 = neighborhood(k:end, k:end);

    windows = {W1, W2, W3, W4};
    means = zeros(1, 4);
    variances = zeros(1, 4);
    for w = 1:4
      means(w) = mean(windows{w}(:));
      variances(w) = var(windows{w}(:));
    end

    [~, min_idx] = min(variances);

    output_image(i, j) = means(min_idx);
  end
end

output_image = uint8(output_image);

imshow(output_image);

