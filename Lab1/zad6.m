
#{
TO JEST A

x = imread('lenaRGB.tiff');
image = rgb2gray(x);

[q, r] = size(image);
s = q / 2;

n1 = image(1:s,:);
n2 = image(s+1:end,:);

imshow(n1);
figure;
imshow(n2);
#}

#{
TO JEST B
x = imread('lenaRGB.tiff');
image = rgb2gray(x);

[q, r] = size(image);
s = r / 3;

n1 = image(:, 1:s);
n2 = image(:, s+1:2*s);
n3 = image(:, 2*s+1:end);

imshow(n1);
figure;
imshow(n2);
figure;
imshow(n3);
#}

#TO JEST C
x = imread('lenaRGB.tiff');
image = rgb2gray(x);

[q, r] = size(image);
s = r / 2;
p = q / 2;

n1 = image(1:p, 1:s);
n2 = image(1:p, s+1:end);
n3 = image(p+1:end, 1:s);
n4 = image(p+1:end, s+1:end);

imshow(n1);
figure;
imshow(n2);
figure;
imshow(n3);
figure;
imshow(n4);


