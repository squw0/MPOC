pkg load image;

I1 = imread('4.1.05.BMP');
I2 = imread('LENA256.BMP');
I3 = imread('motyl.jpg');
I4 = imread('malpa.jpg');


%  Canny method
if size(I1, 3) == 3
  I1gray = rgb2gray(I1);
end
I1gray = edge(I1gray, "Canny");


% Sobel method
if size(I2, 3) == 3
  I2gray = rgb2gray(I2);
else
  I2gray = I2;
end
I2gray = edge(I2gray, "Sobel");


% Lindeberg method
if size(I3, 3) == 3
  I3gray = rgb2gray(I3);
end
I3gray = edge(I3gray, "Lindeberg");


% Kirsch method
if size(I4, 3) == 3
  I4gray = rgb2gray(I4);
end
I4gray = edge(I4gray, "Kirsch");


figure;
subplot(1, 2, 1); imshow(I1); title('Obraz 1');
subplot(1, 2, 2); imshow(I1gray); title('Obraz 1 Edge');

figure;
subplot(1, 2, 1); imshow(I2); title('Obraz 2');
subplot(1, 2, 2); imshow(I2gray); title('Obraz 2 Edge');

figure;
subplot(1, 2, 1); imshow(I3); title('Obraz 3');
subplot(1, 2, 2); imshow(I3gray); title('Obraz 3 Edge');

figure;
subplot(1, 2, 1); imshow(I4); title('Obraz 4');
subplot(1, 2, 2); imshow(I4gray); title('Obraz 4 edge');


