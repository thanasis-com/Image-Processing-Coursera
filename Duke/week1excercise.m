% read an image
I=imread('Lenna.png');
I=I(:,:,3);
figure;
imshow(I)

quantised=quantise(I, 100);

figure;
imshow(quantised);

averaged=neighbourAverage(I, 5);

figure;
imshow(averaged);
