function [ ] = threshold(  )

%Ömer Faruk KOÇ
%22.Kasým.2015

%Dijital Görüntü Ýþleme - Threshold

%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi alýyoruz

Iin=imread('ay2.jpg');   %resmi alýyoruz

IinGray=rgb2gray(Iin);      %griye çeviriyoruz

Iout=IinGray;

[M N]=size(IinGray);

for i=1 : M
    for j=1 :N
        if(IinGray(i,j)<=50)
            Iout(i,j)=0;
        end
        if(IinGray(i,j)>=200)
            Iout(i,j)=255;
        end
    end
end

figure('units','normalized','outerposition',[0 0 1 1])      %figür penceresini tam ekran açtýrýyoruz
%imshow(IinGray), title('Orjinal Gri Görüntü');

imshowpair(IinGray,Iout,'montage');
end

