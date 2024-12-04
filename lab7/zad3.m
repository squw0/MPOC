pkg load image;

img5 = imread('obraz_05a.png');

% Dopasowanie jasności: metoda histogramu
img5_adjusted = imadjust(img5, [], [], 1.2); % Gamma korekcja (1.2 zwiększa jasność)

% Alternatywnie: operacje arytmetyczne
img5_brightened = img5 + 50; % Zwiększ jasność (uważaj na przepełnienie)


imwrite(img5_adjusted, 'obraz_05a_adjusted.png');
imwrite(img5_brightened, 'obraz_05a_brightened.png');




%*

pkg load image;

img = imread('D:\OM_MPOC\OMishchenko_Lab\Obraz_05a.png');
img_gray = rgb2gray(img);

brightness_increase = 50;
img_bright = img_gray + brightness_increase;

img_bright = uint8(max(min(img_bright, 255), 0));

img_hist_eq = histeq(img_gray);

figure;
subplot(1,3,1), imshow(img_gray), title('Obraz oryginalny');
subplot(1,3,2), imshow(img_bright), title('Po zwiększeniu jasności');
subplot(1,3,3), imshow(img_hist_eq), title('Po normalizacji histogramu');


%*
