function [ ] = laplacianKeskinlestirmeFiltresi( )
% Ömer Faruk KOÇ
% 13.Aralýk.2015


%Iin = imread('C:\Users\omerf\Desktop\DSC_0029.jpg');   %resmi aldýk
Iin = imread('marriage.jpg');   %resmi aldýk
%Iin = imread('mavi.jpg');   %resmi aldýk
Iin = im2double(Iin);   %resmin px deðerleri üzerinde iþlem yapabilmek için türünü uint8'den double'a çevirdik 
[m n]=size(Iin);        %resmin boyularýný aldýk
Iout =Iin;              % çýkýþ resmini giriþ resminden türettik


H = fspecial('laplacian');  %hazýr fonksiyonla 
IoutAuto= imfilter(Iin,H);  %filtreleme yapýyoruz


for i=2:m-1         % kendi fonksiyonumuzla filtreleme yapýyoruz
    for j=2:n-1
        Iout(i,j) =(Iin(i-1,j)+Iin(i+1,j)+Iin(i,j-1)+Iin(i,j+1))-4*Iin(i,j);
    end
end
figure,
subplot(2,2,[1 2]),imshow(Iin), title('Orjinal Görüntü');  
subplot(2,2,3),imshow(Iout), title('Kendi Matrisimizle Filtrelenen Görüntü');
subplot(2,2,4),imshow(IoutAuto), title('Hazýr Fonksiyonla Filtrelenen Görüntü');

figure,
subplot(2,2,[1 2]),imhist(rgb2gray(Iin)), title('Orjinal Görüntü Histogramý');  
subplot(2,2,[3 4]),imhist(rgb2gray(Iout)), title('Filtrelenen Görüntü Histogramý ');


end

