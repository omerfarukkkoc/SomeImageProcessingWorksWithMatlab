function [ ] = saltAndPepperNoiseRemoveImage( )
% Ömer Faruk KOÇ
% 25.Kasým.2015

%Dijital Görüntü Ýþleme - Salt And Pepper Noise & Mean Filtering

%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi alýyoruz

Iin=imread('eye.png');   %resmi alýyoruz

%noiseImage = imnoise(Iin,'salt & pepper', 0.8);
noiseImage = imnoise(Iin, 'salt & pepper' , 0.2);     %Gürültü Ekliyoruz


%imwrite(Iout,'noiseImage.jpg','JPG');      

meanFiltrelemeMatrisi = fspecial('average', [5 5]);     % mean filtreleme ile
Iout = imfilter(noiseImage, meanFiltrelemeMatrisi);       % resmi düzelttik



%imwrite(noiseImage,'gürültülüResim.jpg','JPG');
%imwrite(Iout,'gürültüKaldýrýlmýþResim.jpg','JPG');    % Çalýþma Sayfasýnýn Olduðu Yere
                                                    %Resmi Kaydediyoruz

figure('units','normalized','outerposition',[0 0 1 1])      %figure ekranýný tam ekran açtýrýyoruz
subplot(2,2,1), imshow(Iin), title('Orjinal Görüntü')     
subplot(2,2,2), imshow(noiseImage), title('Tuz-Biber Gürültüsü Eklenmiþ Görüntü')
subplot(2,2,[3 4]), imshow(Iout), title('Tuz-Biber Gürültüsü Mean Filtreleme Ýle Kaldýrýlmýþ Görüntü')

end

