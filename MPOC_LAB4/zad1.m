pkg load image;

I = imread('moon.tif');
I = im2double(I);

k = 1.5;

I_scaled = I * k;
I_clipped = min(max(I_scaled, 0), 1);

I_normalized = I_scaled / max(I_scaled(:));

figure;
subplot(1, 3, 1), imshow(I, []), title('oryginał');
subplot(1, 3, 2), imshow(I_clipped, []), title('obcinanie');
subplot(1, 3, 3), imshow(I_normalized, []), title('normalizacja');

