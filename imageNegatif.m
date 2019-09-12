function [ ] = imageNegatif(  )
%�mer Faruk KO�
%27.Kas�m.2015

%Dijital G�r�nt� ��leme - Image Negatif

Iin=imread('ccc.jpg');
 
IinGray=rgb2gray(Iin);   % Negatif almak i�in resmin gri olmas� gerekmiyor histogram �izdirebilmek i�in griye �eviriyoruz

Iout=255 - Iin;   % Resmin Negatifini Al�p X'e At�yoruzz

figure('units','normalized','outerposition',[0 0 1 1])      %fig�r penceresini tam ekran a�t�r�yoruz     
subplot(2,2,1), imshow(Iin), title('Orjinal G�r�nt�') 
subplot(2,2,2), imhist(IinGray), title('Negatif G�r�nt�n�n Histogram�') 
subplot(2,2,3), imshow(Iout), title('Negatif G�r�nt�')  
subplot(2,2,4), imhist(255 - IinGray), title('Orjinal Gri G�r�nt�n�n Histogram�')
end

