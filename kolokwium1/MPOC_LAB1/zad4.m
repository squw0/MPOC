[I, m] = imread('autumn.tif');

if ndims(I) > 2
    disp('obraz RGB');
    imshow(I);
    title('obraz RGB');
    I = double(I);
    Igray = (I(:,:,1) + I(:,:,2) + I(:,:,3)) / 3;
    Igray = Igray / 255;
    figure;
    imshow(Igray);
    title('obraz w odcieniach szarości średnia');
    Igray2 = (11 * I(:,:,1) + 16 * I(:,:,2) + 5 * I(:,:,3)) / 32;
    Igray2 = Igray2 / 255;
    figure;
    imshow(Igray2);
    title('obraz w odcieniach szarości rgb');
elseif size(m, 1) > 1
    disp('obraz indeksowany');
    imshow(I, m);
    title('obraz indeksowany');
else
    disp('obraz w gradacji szarości');
end
