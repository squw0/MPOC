pkg load image;

I1 = imread('office_6.jpg');
I2 = imread('office_1.jpg');

rows = min(size(I1, 1), size(I2, 1));
cols = min(size(I1, 2), size(I2, 2));
I1_cropped = I1(1:rows, 1:cols);
I2_cropped = I2(1:rows, 1:cols);

difference = abs(double(I1_cropped) - double(I2_cropped));

figure;
subplot(1, 3, 1), imshow(I1_cropped, []), title('obraz 1');
subplot(1, 3, 2), imshow(I2_cropped, []), title('obraz 2');
subplot(1, 3, 3), imshow(difference, []), title('obraz różnicowy');

