

pkg load image;

I1 = imread('obraz3.jpg');

brighter = 70;

I1brighter = I1 + brighter;

figure;
subplot(1,2,1), imshow(I1brighter), title("Obraz 3 rozjaśniony");
subplot(1,2,2), imshow(I1), title("Obraz 3")
