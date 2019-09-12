function [] = histogramMatching()

%�mer Faruk KO� & Muhammed Emin Y�R�K
%25.Ekim.2015

%Dijital G�r�nt� ��leme - Histogram Matching

%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi al�yoruz

Iin=imread('ay2.jpg');   %resmi al�yoruz

IinGray=rgb2gray(Iin);      %griye �eviriyoruz
h=imhist(IinGray);          %gri resmin histogram�n� al�yoruz
        
x=0.00:.0039:1.00;          %manuel olarak olusturdugumuz t(r) e�risi
x(:,257)=[];                %257 boyutlu oldugu i�in bir boyut azalt�p 256 boyut yap�yoruz

figure;                     
plot(x);                    %e�riyi �izdiriyoruz
title('Olusturdugumuz T(r) Egri Grafigi');
sk(1)=x(1);
for i=2 : numel(x)
    sk(i)=x(i)+x(i-1);      %olu�turdugumuz egriyi referans alarak sk'y� olu�turuyoruz
end

sk=sk*255;                  %renk de�er aral���n� sa�lamas� i�in 255 ile �arp�yoruz

IoutGray=IinGray;
N=size(IinGray);

for i=1 : N(1)
    for j=1 :N(2)
        index=IinGray(i,j)+1;
        IoutGray(i,j)=sk(index);    %��k�� resmini olu�turuyoruz
    end
end

g=imhist(IoutGray);         %��k�� resminin histogram�



Ihmfonk = histeq(IinGray,10);    %haz�r fonksiyon kullanarak histogram matching yap�yoruz
j=imhist(Ihmfonk);                %histogram matching yap�lan resmin histogram�



figure('units','normalized','outerposition',[0 0 1 1])      %fig�r penceresini tam ekran a�t�r�yoruz
subplot(2,2,1), imshow(IinGray), title('Orjinal Gri G�r�nt�')   %ilk al�nan g�r�nt�y� bas�yoruz
subplot(2,2,2), plot(h), title('Orjinal Gri G�r�nt�n�n Histogram�')     %ilk al�nan g�r�nt�n�n histogram�n� bas�yoruz
subplot(2,2,3), imshow(IoutGray), title('Bizim Yazd�g�m�z Histogram Matching ��leminden ��kan G�r�nt�')     %matching i�leminden ��kan g�r�nt�y� bas�yoruz
subplot(2,2,4), plot(g), title('��k�� G�r�nt�s�n�n Histogram�')         %matching i�leminden ��kan g�r�nt�n�n histogram�n� bas�yoruz


figure
subplot(2,2,1), imshow(Ihmfonk), title('Haz�r fonksiyon Histeqle Olusturulan G�r�nt�')      %haz�r fonksiyondan c�kan g�r�nt�y� bas�yoruz
subplot(2,2,2), plot(j), title('Histeqle Olusturulan G�r�nt�n�n Histogram�')    %haz�r fonksiyondan c�kan g�r�nt�n�n histogram�n� bas�yoruz

end

