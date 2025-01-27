pkg load image;

I = imread('peppers.png');

I_gaussian = imnoise(I, 'gaussian', 0, 0.05);
I_salt_pepper = imnoise(I, 'salt & pepper', 0.05);
I_speckle = imnoise(I, 'speckle', 0.05);
I_poisson = imnoise(I, 'poisson', 0.05);

figure;
subplot(2, 3, 1); imshow(I); title('Orygynal');
subplot(2, 3, 2); imshow(I_gaussian); title('Gaussian');
subplot(2, 3, 3); imshow(I_salt_pepper); title('Salt&pepper');
subplot(2, 3, 4); imshow(I_speckle); title('Speckle');
subplot(2, 3, 5); imshow(I_poisson); title('Poisson');

imwrite(I_gaussian ,'peppers_gaussian.png');
imwrite(I_salt_pepper ,'peppers_salt_pepper.png');
imwrite(I_speckle ,'peppers_speckle.png');
imwrite(I_poisson ,'peppers_poisson.png');

