
pkg load image;

[I1, map1] = imread('obraz1.jpg');
[maskaa, map2] = imread('rombbb.jpg');

%maskaa = size_equal(I1);
%maskaa = sizeof (100);

maskaa = uint8(maskaa);
maskaa = maskaa * 255;

ROMB = bitand(I1, maskaa);

figure;
subplot(1,2,1), imshow(ROMB), title("Obraz 1 z romb");
subplot(1,2,2), imshow(I1), title("Obraz 1");

imwrite(ROMB, "Obraz1romb.jpg");



