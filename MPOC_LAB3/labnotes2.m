clc
clear

[I, map] = imread('MPOC_lab_02_Obrazy/MPOC_lab_02_Obrazy/Ufok.bmp');
mask = I; %kopia obrazu o tych samych rozmiarach
klatka = 1; %jezeli klatka rowna sie 1 to pierwszy ufoludek potem 2 przy klatka = 2 itd
mask(I > 1) = 255; %I > 0?

mask(:,:,2) = mask;
mask(:,:,3) = mask(:,:,1);

imshow(mask), title('maska');
figure;

%imshow(I,map);
Iufo = ind2rgb(I,map); %konwersja do rgb ale w przedziale 0 do 1 (i typie double)
Iufo = uint8(Iufo * 255); %rzutowanie do przedzialu od 0 do 255

%figure;

imshow(Iufo), title('Ufok');

[Ibackground, map] = imread('MPOC_lab_02_Obrazy/MPOC_lab_02_Obrazy/Tlo.bmp');

%figure;
%imshow(Ibackground,map);
Ibackground = ind2rgb(Ibackground,map);
Ibackground = uint8(Ibackground * 255);

figure;
imshow(Ibackground), title('Tlo');

w = size(Iufo,1); %odczytujemy liczbe wierszy
k = size(Iufo,2); %odczytujemy liczbe kolumn

Iout = Ibackground;

%wspolrzedne ufoludka na obrazie wynikowym
x = 10;
y = 50;

%Iout(x:x+w-1, y:y+k-1, :) = Iufo;

%Iout(x:x+w-1, y:y+k-1, :) = bitor(Iout(x:x+w-1, y:y+k-1, :),Iufo);
maskNeg = bitcmp(mask,8);

figure;
imshow(maskNeg), title('negacja');

Iout(x:x+w-1, y:y+k-1, :) = bitand(Iout(x:x+w-1, y:y+k-1, :),maskNeg);
Iout(x:x+w-1, y:y+k-1, :) = bitor(Iout(x:x+w-1, y:y+k-1, :),Iufo);
figure;
imshow(Iout), title('Obraz wynikowy');

%[w k x] = size(I) poda rozmiary w - wierszy k - kolumn
