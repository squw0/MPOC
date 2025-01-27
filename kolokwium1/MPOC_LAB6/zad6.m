pkg load image;


k1 = 3;
k=3;
w=3;
I = imread("peppers.png");
Igray = rgb2gray(I);
Iout = zeros(size(Igray));

for w = k1:size(I, 1) - k1
  for k = k1:size(I, 2) - k1
    W1 = I(w-k1+1:w, k-k1+1:k);
    W2 = I(w-k1+1:w, k:k+k1-1);
    W3 = I(w:w+k1-1, k-k1+1:k);
    W4 = I(w:w+k1-1, k:k+k1-1);

    ODCHYLENIE(1) = std(W1(:));
    ODCHYLENIE(2) = std(W2(:));
    ODCHYLENIE(3) = std(W3(:));
    ODCHYLENIE(4) = std(W4(:));

    SREDNIA(1) = mean(W1(:));
    SREDNIA(2) = mean(W2(:));
    SREDNIA(3) = mean(W3(:));
    SREDNIA(4) = mean(W4(:));

    [minVal, ind] = min(ODCHYLENIE(:));
    Iout(w, k) = SREDNIA(ind);
  end
end
figure;
subplot(1, 2, 1); imshow(I, []); title('Oryginalny obraz');
subplot(1, 2, 2); imshow(Iout, []); title('Filtr Kuwahary');

