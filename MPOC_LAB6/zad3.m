
pkg load image;

Ig = imread('peppers(gaussian).png');
Isp = imread('peppers(salt&pepper).png');
Is = imread('peppers(speckle).png');
ip = imread('peppers(poisson).png');

filter = fspecial("gaussian");

Cg = imfilter(Ig, 0.5);

imshow(Cg);
