function [ ] = unsharpMasking( )
% Ömer Faruk KOÇ
% 25.Aralýk.2015


%Iin=imread('C:\Users\omerf\Desktop\mavi.jpg');   %resmi alýyoruz

Iin=imread('img.jpg');   %resmi alýyoruz

H = fspecial('average', [30 30]);     % mean filtreleme ile
IinBlur = imfilter(Iin, H);                 % resmi blurlaþtýrdýk

Iout=Iin-IinBlur;       %Resmin Kendinden Blur Halini Çýkarýnca Keskin Resme Ulaþýrýz

figure('units','normalized','outerposition',[0 0 1 1])      %figure ekraný tam ekran açýlýyor
subplot(2,2,1), imshow(Iin), title('Orjinal Görüntü') 
subplot(2,2,2), imshow(IinBlur), title('Bulanýk Görüntü')
subplot(2,2,[3 4]), imshow(Iout), title('Çýkýþ Görüntüsü')


end

