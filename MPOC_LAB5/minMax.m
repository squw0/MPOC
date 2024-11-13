function [myMin myMax] = minMax(I)
  myMin=min(I(:));
  myMax=max(I(:));
end


I = imread('tire.tif');
[m1, m2] = minMax(I);

disp(['Minimalna wartość: ', num2str(m1)]);
disp(['Maksymalna wartość: ', num2str(m2)]);
