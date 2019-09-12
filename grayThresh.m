function [ ] = grayThresh( )
% Ömer Faruk KOÇ
% 27.Kasým.2015

%Dijital Görüntü Ýþleme - Gri Threshold

I=imread('ay2.jpg');   %resmi alýyoruz
%I=imread('DSC_0029.jpg');   %resmi alýyoruz

level = graythresh(I);      %Normal Þekilde(Resim Renkli Ýken) Gri Threshold Yapýyoruz
gri1 = im2bw(I,level);


IinGray = rgb2gray(I);          %Resmi Gri'ye Çevirip Gri Threshold Yapýyoruz

level = graythresh(IinGray);
gri2 = im2bw(IinGray,level);        %Arada Az Bir Fark Oluþuyor


figure
imshowpair(gri1,gri2,'montage');

%figure
%subplot(2,2,1), imshow(gri1), title('1. Gri Threshold')     
%subplot(2,2,2), imshow(gri2), title('2. Gri Threshold')



end

