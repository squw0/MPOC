

Ipeppers = imread('peppers.png');
Imoon = imread('moon.tif');

subplot(1,2,1), imshow(Ipeppers), title('Obraz oryginalny');
subplot(1,2,2), imshow(Imoon), title('Obraz oryginalny');

Cpeppers = medfilt2(Ipeppers, [5 5]);
Cmoon = medfilt2(Imoon, [5 5]);

figure;
subplot(1,2,1), imshow(Cpeppers), title('Obraz po filtrze');
subplot(1,2,2), imshow(Cmoon), title('Obraz po filtrze');
