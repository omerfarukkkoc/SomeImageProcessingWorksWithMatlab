function [ ] = imageNegatif(  )
%Ömer Faruk KOÇ
%27.Kasým.2015

%Dijital Görüntü Ýþleme - Image Negatif

Iin=imread('ccc.jpg');
 
IinGray=rgb2gray(Iin);   % Negatif almak için resmin gri olmasý gerekmiyor histogram çizdirebilmek için griye çeviriyoruz

Iout=255 - Iin;   % Resmin Negatifini Alýp X'e Atýyoruzz

figure('units','normalized','outerposition',[0 0 1 1])      %figür penceresini tam ekran açtýrýyoruz     
subplot(2,2,1), imshow(Iin), title('Orjinal Görüntü') 
subplot(2,2,2), imhist(IinGray), title('Negatif Görüntünün Histogramý') 
subplot(2,2,3), imshow(Iout), title('Negatif Görüntü')  
subplot(2,2,4), imhist(255 - IinGray), title('Orjinal Gri Görüntünün Histogramý')
end

