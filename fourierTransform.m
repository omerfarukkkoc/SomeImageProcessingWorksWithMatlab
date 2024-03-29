function [ ] = fourierTransform()

imageA = imread('imageA.png');
imageB = imread('imageB.png');

figure, imshow(imageA)
title('Image A - Greek Church')
figure, imshow(imageB)
title('Image B - Aishwarya Rai')

fftA = fft2(double(imageA));
fftB = fft2(double(imageB));

figure, imshow(abs(fftshift(fftA)),[24 100000]), colormap gray
title('Image A FFT2 Magnitude')
figure, imshow(angle(fftshift(fftA)),[-pi pi]), colormap gray
title('Image A FFT2 Phase')
figure, imshow(abs(fftshift(fftB)),[24 100000]), colormap gray
title('Image B FFT2 Magnitude')
figure, imshow(angle(fftshift(fftB)),[-pi pi]), colormap gray
title('Image B FFT2 Phase')

fftC = abs(fftA).*exp(i*angle(fftB));
fftD = abs(fftB).*exp(i*angle(fftA));

imageC = ifft2(fftC);
imageD = ifft2(fftD);

cmin = min(min(abs(imageC)));
cmax = max(max(abs(imageC)));

dmin = min(min(abs(imageD)));
dmax = max(max(abs(imageD)));

figure, imshow(abs(imageC), [cmin cmax]), colormap gray
title('Image C  Magnitude')
figure, imshow(abs(imageD), [dmin dmax]), colormap gray
title('Image D  Magnitude')



end

