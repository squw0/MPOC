
pkg load image;

Ig = imread('peppers_gaussian.png');
Isp = imread('peppers_salt&pepper.png');
Is = imread('peppers_speckle.png');
ip = imread('peppers_poisson.png');

subplot(2,2,1), imshow(Ig), title('Obraz z szumem(gaussian)');
subplot(2,2,2), imshow(Isp), title('Obraz z szumem(salt & pepper)');
subplot(2,2,3), imshow(Is), title('Obraz z szumem(speckle)');
subplot(2,2,4), imshow(Ip), title('Obraz z szumem(poisson)');

Cg = medfilt2(Ig, [3 3]);
Csp = medfilt2(Isp, [3 3]);
Cs = medfilt2(Is, [3 3]);
Cpoisson = medfilt2(Ip, [3 3]);

figure;
subplot(2,2,1), imshow(Cg), title('Obraz z szumem(gaussian)');
subplot(2,2,2), imshow(Csp), title('Obraz z szumem(salt & pepper)');
subplot(2,2,3), imshow(Cs), title('Obraz z szumem(speckle)');
subplot(2,2,4), imshow(Cpoisson), title('Obraz z szumem(poisson)');

Cgf= nlfilter(Ig, [3 3], 'min(x(:))');
Cspf= nlfilter(Isp, [3 3], 'min(x(:))');
Csf= nlfilter(Is, [3 3], 'min(x(:))');
Cpf= nlfilter(Ip, [3 3], 'min(x(:))');

figure;
subplot(2,2,1), imshow(Cgf), title('Obraz z szumem(gaussian)');
subplot(2,2,2), imshow(Cspf), title('Obraz z szumem(salt & pepper)');
subplot(2,2,3), imshow(Csf), title('Obraz z szumem(speckle)');
subplot(2,2,4), imshow(Cpf), title('Obraz z szumem(poisson)');
