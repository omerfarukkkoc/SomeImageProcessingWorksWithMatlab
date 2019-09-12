function [ ] = skalalama( )
% �mer Faruk KO�
% 29.Aral�k.2015


%Iin = imread('C:\Users\omerf\Desktop\Farmers.jpg');   %resmi ald�k

Iin = imread('iii.jpg');   %resmi ald�k
Iin=im2double(Iin);

Iout=Iin*2; 

%G�r�nt�deki pixel de�erlerini 2ile �arparak art�rd�k
%Bu y�zden 255 ten b�y�k de�erler olu�tu
%D�zeltmek i�in Skalalama yap�yoruz
            
            
IoutMin=min(min(Iout));     %yeni g�r�nt�deki min px de�eri
IoutNew=Iout+IoutMin(:,:,3);    %g�r�nt� ile min de�erini toplad�k
IoutNewMax=max(max(IoutNew));   %bu yeni g�r�nt�n�n max'�n� bulduk
IoutNewNew=IoutNew*(255/IoutNewMax(:,:,3));    %255/max yapt�k


figure,
subplot(2,2,1),imshow(Iin), title('Orjinal G�r�nt�');  
subplot(2,2,2),imshow(Iout), title('2y B�l�nerek Px De�erleri <0 olan G�r�nt�');
subplot(2,2,3),imshow(IoutNew), title('Min De�eri Eklenmi� G�r�nt�');
subplot(2,2,4),imshow(IoutNewNew), title('Skalalanm�� G�r�nt�');

%figure,
%subplot(2,2,1),imhist(Iin1), title('Orjinal G�r�nt� Histogram�');  
%subplot(2,2,2),imhist(Iout), title('2 �le �arp�lm�� Skalas� Artm�� G�r�nt� Histogram�');
%subplot(2,2,3),imhist(IoutNew), title('Min De�eri Eklenmi� G�r�nt� Histogram�');
%subplot(2,2,4),imhist(IoutNewNew), title('Skalalanm�� G�r�nt� Histogram�');


end

