pkg load image;

img = imread('images_3.jpg');

if size(img, 3) == 3
  img = rgb2gray(img);
end

level = graythresh(img);
img_bin = img > level * 255;

img_bin = bwareaopen(img_bin, 50);
bordermask = imdilate(img_bin, ones(3));
bordermask = bordermask & ~img_bin;

img_bin(bordermask) = 0;

subplot(1,3,1); imshow(img); title("Orygynal");
subplot(1,3,2); imshow(img_bin); title("Po usunienciu obiektow");
subplot(1,3,3); imshow(bordermask); title("Obiekty stykajace sie z brzegiem");



%{

pkg load image;

image = imread('images_3.jpg');
binary_image = imbinarize(image);

figure(1);
imshow(binary_image);
title('Oryginalny obraz binarny');

border_objects = imclearborder(binary_image);

cleaned_image = binary_image & ~border_objects;

figure(2);
imshow(cleaned_image);
title('Obraz po usunięciu obiektów stykających się z brzegami');

%}

