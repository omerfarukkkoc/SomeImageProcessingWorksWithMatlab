function [ ] = grayThresh( )
% �mer Faruk KO�
% 27.Kas�m.2015

%Dijital G�r�nt� ��leme - Gri Threshold

I=imread('ay2.jpg');   %resmi al�yoruz
%I=imread('DSC_0029.jpg');   %resmi al�yoruz

level = graythresh(I);      %Normal �ekilde(Resim Renkli �ken) Gri Threshold Yap�yoruz
gri1 = im2bw(I,level);


IinGray = rgb2gray(I);          %Resmi Gri'ye �evirip Gri Threshold Yap�yoruz

level = graythresh(IinGray);
gri2 = im2bw(IinGray,level);        %Arada Az Bir Fark Olu�uyor


figure
imshowpair(gri1,gri2,'montage');

%figure
%subplot(2,2,1), imshow(gri1), title('1. Gri Threshold')     
%subplot(2,2,2), imshow(gri2), title('2. Gri Threshold')



end

