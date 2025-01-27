pkg load image;

I1 = imread('moon.tif');

I1_gaussian = imnoise(I, 'gaussian', 0, 0.05);
I1_salt_pepper = imnoise(I, 'salt & pepper', 0.05);
I1_speckle = imnoise(I, 'speckle', 0.05);
I1_poisson = imnoise(I, 'poisson', 0.05);

figure;
subplot(2, 3, 1); imshow(I1); title('Orygynal');
subplot(2, 3, 2); imshow(I1_gaussian); title('Gaussian');
subplot(2, 3, 3); imshow(I1_salt_pepper); title('Salt&pepper');
subplot(2, 3, 4); imshow(I1_speckle); title('Speckle');
subplot(2, 3, 5); imshow(I1_poisson); title('Poisson');

imwrite(I1_gaussian ,'moon_gaussian.png');
imwrite(I1_salt_pepper ,'moon_salt_pepper.png');
imwrite(I1_speckle ,'moon_speckle.png');
imwrite(I1_poisson ,'moon_poisson.png');

