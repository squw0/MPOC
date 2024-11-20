pkg load image

[I, map] = imread('Ufok.bmp');

mask = I;
klatka = 1;
%pause(1/25);
mask(I > 1) = 255;

mask(:,:,2) = mask;
mask(:,:,3) = mask(:,:,1);

Iufo = ind2rgb(I,map);
Iufo = uint8(Iufo * 255);

[Ibackground, map] = imread('Tlo.bmp');
Ibackground = ind2rgb(Ibackground,map);
Ibackground = uint8(Ibackground * 255);

w = size(Iufo,1);
k = size(Iufo,2);

Iout = Ibackground;

x = 10;
y = 50;

maskNeg = bitcmp(mask,8);

Iout(x:x+w-1, y:y+k-1, :) = bitand(Iout(x:x+w-1, y:y+k-1, :),maskNeg);
Iout(x:x+w-1, y:y+k-1, :) = bitor(Iout(x:x+w-1, y:y+k-1, :),Iufo);
figure;
imshow(Iout), title('Obraz wynikowy');
