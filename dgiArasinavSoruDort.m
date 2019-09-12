function [ ] = dgiArasinavSoruDort( )
%Ömer Faruk KOÇ
%27.Kasým.2015

a=[1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ];
% birinci resmi oluþturmak için a dizisini yazdýk
b=[1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ; 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;];
% ikinci resmi oluþturmak için b dizisini yazdýk

imwrite(a,'1.jpg','JPG');       %oluþturduðumuz ilk diziyi resim olarak kaydettik
imwrite(b,'2.jpg','JPG');       %oluþturduðumuz ikinci diziyi resim olarak kaydettik

%bu resimleri default olarak matlab çalýþma klasörünüze kaydeder


%x=imread('C:\Users\omerf\Desktop\1.jpg');  
%y=imread('C:\Users\omerf\Desktop\2.jpg'); 


x=imread('1.jpg');              %resimleri
y=imread('2.jpg');              %aldýk


a1=x;
b1=y;

%a1=im2bw(x,0.4);         %ilk resmi binary'e çeviriyoruz
%b1=im2bw(y,0.4);         %ikinci resmi binary'e çeviriyoruz 

%burda binary'e çevirmezsek a1 ve b1 deðiþkenleri/resimleri uint8 olarak
%kaydedilir. sýnav sorusunda binary resimler üzerinden iþlem yapýlýyor

k = fspecial('average', [3 3]);     % filtreleme için 3x3 lük matrisi oluþturuyoruz
a2 = imfilter(a1, k);			%ilk aldýgýmýz görüntüyü filtreliyoruz

%figure('units','normalized','outerposition',[0 0 1 1])      %figür penceresini tam ekran açtýrýyoruz
figure('Name','1. görüntünün histogramlarý','NumberTitle','off')
subplot(2,2,1), imshow(a1), title('1. Görüntü Normal')   %ilk alýnan görüntüyü basýyoruz
subplot(2,2,2), imhist(a1), title('1. Görüntü Histogram')     %ilk alýnan görüntünün histogramýný basýyoruz
subplot(2,2,3), imshow(a2), title('1. Görüntü Filtrelendikten Sonra')     % filtrelenen görüntü
subplot(2,2,4), imhist(a2), title('1. Görüntü Filtrelendikten Sonra Histogram') % filtrelenen görüntünün histogramý


b2 = imfilter(b1, k);					%ikinci aldýgýmýz görüntüyü filtreliyoruz

%figure('units','normalized','outerposition',[0 0 1 1])      %figür penceresini tam ekran açtýrýyoruz
figure('Name','2. görüntünün histogramlarý','NumberTitle','off')      
subplot(2,2,1), imshow(b1), title('2. Görüntü Normal')   %ikinci alýnan görüntüyü basýyoruz
subplot(2,2,2), imhist(b1), title('2. Görüntü Histogram')     %ikinci alýnan görüntünün histogramýný basýyoruz
subplot(2,2,3), imshow(b2), title('2. Görüntü Filtrelendikten Sonra')  % filtrelenen görüntü    
subplot(2,2,4), imhist(b2), title('2. Görüntü Filtrelendikten Sonra Histogram') % filtrelenen görüntünün histogramý


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%sonuç olarak filtrelemeden önce histogramlar ayný iken filtrelemeden sonra deðiþiyor
%1. görüntünün histogramý ayný kalýrken 2. görüntününki deðiþiyor
%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%

figure('Name','Filtrelemeden önce ve sonra görüntülerin histogramlarý','NumberTitle','off')
subplot(2,2,1), imhist(a1), title('1. Görüntünün histogramý')   %ilk alýnan görüntüyü basýyoruz
subplot(2,2,2), imhist(a2), title('1. Görüntünün filtrelendikten sonraki histogramý')     %ilk alýnan görüntünün histogramýný basýyoruz
subplot(2,2,3), imhist(b1), title('2. Görüntünün histogramý')     % filtrelenen görüntü
subplot(2,2,4), imhist(b2), title('2. Görüntünün filtrelendikten sonraki histogramý') % filtrelenen görüntünün histogramý


end

