I=imread('lena.gif');

I=double(I);

lpfilter=[1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25];

filtered=imfilter(I, lpfilter, 'replicate');

myMSE=immse(I, filtered);

myPSNR=psnr(filtered, I);