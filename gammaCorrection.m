function [ ] = gammaCorrection( )
%Ömer Faruk KOÇ
%27.Kasým.2015

Iin=imread('img.jpg'); %resmi aldýk
gamma = [0.05,0.2,0.67,1.5,2.5,5];      %gama deðerleri için dizi oluþturduk
katsayi=8;
Iout=katsayi.*im2double(Iin).^(gamma(5)); %gama formülü

subplot(2,2,[1 2]),imshow(Iin), title('Orjinal Görüntü');  
subplot(2,2,[3 4]),imshow(Iout), title('Çýkýþ Görüntüsü');

end

