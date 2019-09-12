function [ ] = skalalama( )
% Ömer Faruk KOÇ
% 29.Aralýk.2015


%Iin = imread('C:\Users\omerf\Desktop\Farmers.jpg');   %resmi aldýk

Iin = imread('iii.jpg');   %resmi aldýk
Iin=im2double(Iin);

Iout=Iin*2; 

%Görüntüdeki pixel deðerlerini 2ile çarparak artýrdýk
%Bu yüzden 255 ten büyük deðerler oluþtu
%Düzeltmek için Skalalama yapýyoruz
            
            
IoutMin=min(min(Iout));     %yeni görüntüdeki min px deðeri
IoutNew=Iout+IoutMin(:,:,3);    %görüntü ile min deðerini topladýk
IoutNewMax=max(max(IoutNew));   %bu yeni görüntünün max'ýný bulduk
IoutNewNew=IoutNew*(255/IoutNewMax(:,:,3));    %255/max yaptýk


figure,
subplot(2,2,1),imshow(Iin), title('Orjinal Görüntü');  
subplot(2,2,2),imshow(Iout), title('2y Bölünerek Px Deðerleri <0 olan Görüntü');
subplot(2,2,3),imshow(IoutNew), title('Min Deðeri Eklenmiþ Görüntü');
subplot(2,2,4),imshow(IoutNewNew), title('Skalalanmýþ Görüntü');

%figure,
%subplot(2,2,1),imhist(Iin1), title('Orjinal Görüntü Histogramý');  
%subplot(2,2,2),imhist(Iout), title('2 Ýle Çarpýlmýþ Skalasý Artmýþ Görüntü Histogramý');
%subplot(2,2,3),imhist(IoutNew), title('Min Deðeri Eklenmiþ Görüntü Histogramý');
%subplot(2,2,4),imhist(IoutNewNew), title('Skalalanmýþ Görüntü Histogramý');


end

