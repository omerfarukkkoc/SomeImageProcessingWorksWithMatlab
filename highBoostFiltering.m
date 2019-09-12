function [ ] = highBoostFiltering( )
% Ömer Faruk KOÇ
% 27.Aralýk.2015


%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi alýyoruz

Iin=imread('kanki.png');   %resmi alýyoruz

meanFiltrelemeMatrisi = fspecial('average', [30 30]);     % mean filtreleme ile
IinBlur = imfilter(Iin, meanFiltrelemeMatrisi);                 % resmi blurlaþtýrdýk

Fsharp=Iin-IinBlur;  %Resmin Kendinden Blur Halini Çýkarýnca Keskin Resme Ulaþýrýz

Fhb=2*Iin+Fsharp;   %resmin kendini belli bir katsayý oranýnda keskin resimle çarpýnca 
                    %yüksek karþýtlýða sahip resme ulaþýrýz


figure('units','normalized','outerposition',[0 0 1 1])      %figure ekranýný tam ekran açtýrýyoruz
subplot(2,2,1), imshow(Iin), title('Orjinal Görüntü') 
subplot(2,2,2), imshow(IinBlur), title('Bulanýk Görüntü')
subplot(2,2,3), imshow(Fsharp), title('Fsharp -Keskin- Görüntüsü')
subplot(2,2,4), imshow(Fhb), title('High Boost -Yüksek Karþýtlýk- Görüntüsü')


end

