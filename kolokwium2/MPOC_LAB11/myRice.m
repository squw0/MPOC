close all
clear
clc
pkg load image

I = imread('rice.png');
figure; imshow(I); title('Obraz oryginalny');

% Tutaj zamiana obrazu kolorowego na obraz
% w gradacji szarości (jeśli potrzeba)
Igray = I;

% Wykonujemy segmentację obrazu
% używając metody progowania z jednym progiem
% Proszę samodzielnie spróbowac ustalic taki
% próg, który umozliwia dokładne wyodrębnienie
% wszystkich obiektów. Można użyc progowania z
% dwoma programi.

figure; imhist(Igray); title('Histogam oryginalnego obrazu');
disp('wciśnik przycisk')
pause;
% Progowanie z progiem 150
th = 150;
Im = Igray;
Im(Igray <= th) = 255;
Im(Igray > th) = 0;
figure; imshow(Im); title('Po progowaniu');   % Wynik progowania
pause;
% Kolejne operacje maja za zadanie wyeliminowanie niewielkich
% obiektów - szumu oraz wypełnienie "dziur" w obiektach

% Można używaæ funkcji bwmorph do wykonywania operacji morfologicznych na
% obrazach binarnych, np.:
%!!!! BWopen = bwmorph(Im, 'open');
% ale operacje morfologiczne są wykonywane z SE = ones(3)!
Im = ~Im;
Mask = ones(3);
Ie = imerode(Im, Mask);
Id = imdilate(Ie, Mask);
Id = imdilate(Id, Mask);
Ie = imerode(Id, Mask);

BWend  = imfill(Id, 'holes');
figure; imshow(BWend); title('Obaz po operacjach morfologicznych');
disp('wciśnik przycisk')
pause;
% Etykietowanie obiektów
[L num] = bwlabel(BWend);

disp('liczba obiektow ')
disp(num);

% obliczenie cech obrazu - pola powierzchni wszystkich obiektów
s  = regionprops(L, 'area');

areas = cat(1, s.Area)   % łączy tablice - wyniki w kolumnach
areas1 = [s.Area];       % lub - wyniki w wierszach
% wyznaczenie obiektu o najwiêszym polu powierzchni
% oraz indeksu tego obiektu
[maxArea maxAreaIndex] = max(areas)
disp('max index: ')   % indeks obiekto, który ma najwiêksze pole
disp(maxAreaIndex)
disp('max area')
disp(s(maxAreaIndex).Area); % lub disp(maxArea);

% obliczenie cech obrazu - dł. obwodu wszystkich obiektów
p = regionprops(L, 'Perimeter');
disp('perimeter ')
disp(p(maxAreaIndex).Perimeter)

Imax = L;
figure;imshow(L, []); title('L - obiekty z etykietami (przeskalowane)')  % wyświetlenie etykietowanych obiektów
disp('wciśnik przycisk')
pause
% Rysowanie kolorowej obwódki dla wynikowego obiektu
Imax(L == maxAreaIndex) = 255; % wyznaczenie obiektu o max polu
Imax(Imax < 255) = 0;
Imax = uint8(Imax);

BWm = edge(Imax,'canny');   % wykrycie obrysu obiektu,
                            % który później będzie nałożony
                            % na oryginalny obiekt w kolorze czerwonym

BWm = uint8(BWm) * 255;  % zamiana na tablicę wartości uint8
BWm = bitcmp(BWm, 8);       % negacja obrazu
figure; imshow(BWm); title('Obwód obiektu o maksymalnym polu')

disp('wciśnik przycisk')
pause

% utworzenie czarnej obwódki
Iblack = bitand(Igray, BWm);
figure;imshow(Iblack); title('Obraz z czarną obwódką')

% utworzenie białej obwódki
Iwhite = bitor(Igray, bitcmp(BWm, 8)); % ustawienie sk³adowej R na 255 - czerwona obwódka
figure; imshow(Iwhite); title('Obraz z białą obwódką')

% utworzenie czerwonej obwódki,
% na obrazie w gradacjach szarości
Ig = bitor(Igray, bitcmp(BWm, 8));
Ig(:, :, 2) = Igray;
Ig(:, :, 3) = Igray;
Ig(:, :, 2) = bitand(Ig(:, :, 2), BWm);
Ig(:, :, 3) = bitand(Ig(:, :, 3), BWm);
figure;imshow(Ig); title('I rgb')

