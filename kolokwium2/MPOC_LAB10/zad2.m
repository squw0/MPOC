pkg load image;

img = imread('images_2.jpg');

if size(img, 3) == 3
  img = rgb2gray(img);
end

level = graythresh(img);
img_bin = img > level * 255;
img_bin = ~img_bin;

img_bin = bwareaopen(img_bin, 50);
img_grad = -bwdist(~img_bin);
mask = imextendedmin(img_grad, 2);
D2 = imimposemin(img_grad, mask);

L = watershed(D2);
img_bin(L == 0) = 0;

subplot(1,3,1); imshow(img); title("Orygynal");
subplot(1,3,2); imshow(img_bin); title("Separacja");
subplot(1,3,3); imshow(label2rgb(L)); title("Po rozdzielieniu obiektow");


%{

imerode(I,SE)
imdilate(I,SE)
imopen(I,SE)
imclose(I,SE)

SE = strel([010;111;010]);
Iout = imfill(Iin,'indeks');


pkg load image;

image = imread('images_2.jpg');
binary_image = imbinarize(image);

figure(1);
imshow(binary_image);
title('Oryginalny obraz binarny');

distance_transform = -bwdist(~binary_image);

markers = imextendedmin(distance_transform, 2);
distance_transform = imimposemin(distance_transform, markers);

L = watershed(distance_transform);
separated_objects = binary_image;
separated_objects(L == 0) = 0;

figure(2);
imshow(separated_objects);
title('Obraz po rozdzieleniu obiektów');

%}

