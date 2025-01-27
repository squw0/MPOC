pkg load image;

img = imread('images_01.jpg');

if size(img, 3) == 3
  img = rgb2gray(img);
end

level = graythresh(img);
img_bin = img > level * 255;

img_filled = imfill(img_bin, 'holes');
se = strel('rectangle', [3 3]);
img_smooth = imerode(img_filled, se);
img_smooth = imdilate(img_smooth, se);

subplot(1,3,1); imshow(img); title("Orygynal");
subplot(1,3,2); imshow(img_filled); title("Po wypelnieniu dziur");
subplot(1,3,3); imshow(img_smooth); title("Po wygladzeniu brzegow");



%{

pkg load image;

image = imread('images_01.jpg');
binary_image = imbinarize(image);

figure(1);
imshow(binary_image);
title('Oryginalny obraz binarny');

filled_image = imfill(binary_image, 'holes');

se = strel('disk', 3);
smoothed_image = imerode(imdilate(filled_image, se), se);

figure(2);
imshow(smoothed_image);
title('Obraz po wypełnieniu dziur i wygładzeniu brzegów');

%}

