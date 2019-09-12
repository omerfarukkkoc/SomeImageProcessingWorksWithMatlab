function [] = histogramMatching()

%Ömer Faruk KOÇ & Muhammed Emin YÖRÜK
%25.Ekim.2015

%Dijital Görüntü Ýþleme - Histogram Matching

%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi alýyoruz

Iin=imread('ay2.jpg');   %resmi alýyoruz

IinGray=rgb2gray(Iin);      %griye çeviriyoruz
h=imhist(IinGray);          %gri resmin histogramýný alýyoruz
        
x=0.00:.0039:1.00;          %manuel olarak olusturdugumuz t(r) eðrisi
x(:,257)=[];                %257 boyutlu oldugu için bir boyut azaltýp 256 boyut yapýyoruz

figure;                     
plot(x);                    %eðriyi çizdiriyoruz
title('Olusturdugumuz T(r) Egri Grafigi');
sk(1)=x(1);
for i=2 : numel(x)
    sk(i)=x(i)+x(i-1);      %oluþturdugumuz egriyi referans alarak sk'yý oluþturuyoruz
end

sk=sk*255;                  %renk deðer aralýðýný saðlamasý için 255 ile çarpýyoruz

IoutGray=IinGray;
N=size(IinGray);

for i=1 : N(1)
    for j=1 :N(2)
        index=IinGray(i,j)+1;
        IoutGray(i,j)=sk(index);    %çýkýþ resmini oluþturuyoruz
    end
end

g=imhist(IoutGray);         %çýkýþ resminin histogramý



Ihmfonk = histeq(IinGray,10);    %hazýr fonksiyon kullanarak histogram matching yapýyoruz
j=imhist(Ihmfonk);                %histogram matching yapýlan resmin histogramý



figure('units','normalized','outerposition',[0 0 1 1])      %figür penceresini tam ekran açtýrýyoruz
subplot(2,2,1), imshow(IinGray), title('Orjinal Gri Görüntü')   %ilk alýnan görüntüyü basýyoruz
subplot(2,2,2), plot(h), title('Orjinal Gri Görüntünün Histogramý')     %ilk alýnan görüntünün histogramýný basýyoruz
subplot(2,2,3), imshow(IoutGray), title('Bizim Yazdýgýmýz Histogram Matching Ýþleminden Çýkan Görüntü')     %matching iþleminden çýkan görüntüyü basýyoruz
subplot(2,2,4), plot(g), title('Çýkýþ Görüntüsünün Histogramý')         %matching iþleminden çýkan görüntünün histogramýný basýyoruz


figure
subplot(2,2,1), imshow(Ihmfonk), title('Hazýr fonksiyon Histeqle Olusturulan Görüntü')      %hazýr fonksiyondan cýkan görüntüyü basýyoruz
subplot(2,2,2), plot(j), title('Histeqle Olusturulan Görüntünün Histogramý')    %hazýr fonksiyondan cýkan görüntünün histogramýný basýyoruz

end

