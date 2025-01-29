pkg load image
image = imread('4.1.05_gray.jpg');
figure(2);
imhist(image);
title('Histogram obrazu');
disp('Kliknij dwukrotnie na histogramie, aby wybrać dwie wartości progowe...');
[x, ~] = ginput(2);
t1 = round(min(x));
t2 = round(max(x));
disp(['Wybrane progi: t1 = ', num2str(t1), ', t2 = ', num2str(t2)]);
black_or_white = input('Wprowadź wartość koloru (0 dla czarnego, 255 dla białego): ');
if black_or_white ~= 0 && black_or_white ~= 255
    error('Nieprawidłowa wartość. Podaj 0 lub 255.');
end
result_image = progowanie2Gray(image, t1, t2, black_or_white);
figure(3);
imshow(result_image);
title(['Obraz po progowaniu (t1 = ', num2str(t1), ', t2 = ', num2str(t2), ', Kolor = ', num2str(black_or_white), ')']);
