function [ ] = saltAndPepperNoiseAddImage( )
% Ömer Faruk KOÇ
% 25.Kasým.2015

%Dijital Görüntü Ýþleme - Salt And Pepper Noise


Iin=imread('eye.png');   %resmi alýyoruz

%Iout = imnoise(Iin,'salt & pepper', 0.8);
Iout = imnoise(Iin, 'salt & pepper' , 0.2);     %Gürültü Ekliyoruz


imshowpair(Iin,Iout,'montage');              %Resmi Yanyana Birleþtirilmiþ Olarak Açýyoruz
%imwrite(Iout,'noiseImage.jpg','JPG');      % Çalýþma Sayfasýnýn Olduðu Yere
                                            %Resmi Kaydediyoruz

%figure
%subplot(2,2,1), imshow(Iin), title('Orjinal Görüntü')     
%subplot(2,2,2), imshow(Iout), title('Tuz-Biber Gürültüsü Eklenmiþ Görüntü')

end

