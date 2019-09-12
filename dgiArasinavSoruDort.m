function [ ] = dgiArasinavSoruDort( )
%�mer Faruk KO�
%27.Kas�m.2015

a=[1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ;1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 ];
% birinci resmi olu�turmak i�in a dizisini yazd�k
b=[1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ; 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ; 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 ;];
% ikinci resmi olu�turmak i�in b dizisini yazd�k

imwrite(a,'1.jpg','JPG');       %olu�turdu�umuz ilk diziyi resim olarak kaydettik
imwrite(b,'2.jpg','JPG');       %olu�turdu�umuz ikinci diziyi resim olarak kaydettik

%bu resimleri default olarak matlab �al��ma klas�r�n�ze kaydeder


%x=imread('C:\Users\omerf\Desktop\1.jpg');  
%y=imread('C:\Users\omerf\Desktop\2.jpg'); 


x=imread('1.jpg');              %resimleri
y=imread('2.jpg');              %ald�k


a1=x;
b1=y;

%a1=im2bw(x,0.4);         %ilk resmi binary'e �eviriyoruz
%b1=im2bw(y,0.4);         %ikinci resmi binary'e �eviriyoruz 

%burda binary'e �evirmezsek a1 ve b1 de�i�kenleri/resimleri uint8 olarak
%kaydedilir. s�nav sorusunda binary resimler �zerinden i�lem yap�l�yor

k = fspecial('average', [3 3]);     % filtreleme i�in 3x3 l�k matrisi olu�turuyoruz
a2 = imfilter(a1, k);			%ilk ald�g�m�z g�r�nt�y� filtreliyoruz

%figure('units','normalized','outerposition',[0 0 1 1])      %fig�r penceresini tam ekran a�t�r�yoruz
figure('Name','1. g�r�nt�n�n histogramlar�','NumberTitle','off')
subplot(2,2,1), imshow(a1), title('1. G�r�nt� Normal')   %ilk al�nan g�r�nt�y� bas�yoruz
subplot(2,2,2), imhist(a1), title('1. G�r�nt� Histogram')     %ilk al�nan g�r�nt�n�n histogram�n� bas�yoruz
subplot(2,2,3), imshow(a2), title('1. G�r�nt� Filtrelendikten Sonra')     % filtrelenen g�r�nt�
subplot(2,2,4), imhist(a2), title('1. G�r�nt� Filtrelendikten Sonra Histogram') % filtrelenen g�r�nt�n�n histogram�


b2 = imfilter(b1, k);					%ikinci ald�g�m�z g�r�nt�y� filtreliyoruz

%figure('units','normalized','outerposition',[0 0 1 1])      %fig�r penceresini tam ekran a�t�r�yoruz
figure('Name','2. g�r�nt�n�n histogramlar�','NumberTitle','off')      
subplot(2,2,1), imshow(b1), title('2. G�r�nt� Normal')   %ikinci al�nan g�r�nt�y� bas�yoruz
subplot(2,2,2), imhist(b1), title('2. G�r�nt� Histogram')     %ikinci al�nan g�r�nt�n�n histogram�n� bas�yoruz
subplot(2,2,3), imshow(b2), title('2. G�r�nt� Filtrelendikten Sonra')  % filtrelenen g�r�nt�    
subplot(2,2,4), imhist(b2), title('2. G�r�nt� Filtrelendikten Sonra Histogram') % filtrelenen g�r�nt�n�n histogram�


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%sonu� olarak filtrelemeden �nce histogramlar ayn� iken filtrelemeden sonra de�i�iyor
%1. g�r�nt�n�n histogram� ayn� kal�rken 2. g�r�nt�n�nki de�i�iyor
%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%

figure('Name','Filtrelemeden �nce ve sonra g�r�nt�lerin histogramlar�','NumberTitle','off')
subplot(2,2,1), imhist(a1), title('1. G�r�nt�n�n histogram�')   %ilk al�nan g�r�nt�y� bas�yoruz
subplot(2,2,2), imhist(a2), title('1. G�r�nt�n�n filtrelendikten sonraki histogram�')     %ilk al�nan g�r�nt�n�n histogram�n� bas�yoruz
subplot(2,2,3), imhist(b1), title('2. G�r�nt�n�n histogram�')     % filtrelenen g�r�nt�
subplot(2,2,4), imhist(b2), title('2. G�r�nt�n�n filtrelendikten sonraki histogram�') % filtrelenen g�r�nt�n�n histogram�


end

