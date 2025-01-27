

pkg load image;

[I1, map1] = imread('obraz4.jpg');
[maska, map2] = imread('koloo.jpg');

maskaa = size_equal(I1)

%maskaa = imresize(maskaa(size(I1,1), size(I1,1));

maskaa = uint8(maskaa);
maskaa = maskaa * 255;

maska_inverse = ~maskaa;
maska_inverse = uint8(maska_inverse) * 255;

maska_moded = bitand(I1, maskaa);
maska_moded = bitor(maska_moded, maska_inverse);

figure;
subplot(1,2,1), imshow(maska_moded);
subplot(1,2,2), imshow(maska_inverse);

imwrite(maska_moded, "Obraz4kolko.jpg");

