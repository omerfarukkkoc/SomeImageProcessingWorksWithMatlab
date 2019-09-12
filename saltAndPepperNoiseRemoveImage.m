function [ ] = saltAndPepperNoiseRemoveImage( )
% �mer Faruk KO�
% 25.Kas�m.2015

%Dijital G�r�nt� ��leme - Salt And Pepper Noise & Mean Filtering

%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi al�yoruz

Iin=imread('eye.png');   %resmi al�yoruz

%noiseImage = imnoise(Iin,'salt & pepper', 0.8);
noiseImage = imnoise(Iin, 'salt & pepper' , 0.2);     %G�r�lt� Ekliyoruz


%imwrite(Iout,'noiseImage.jpg','JPG');      

meanFiltrelemeMatrisi = fspecial('average', [5 5]);     % mean filtreleme ile
Iout = imfilter(noiseImage, meanFiltrelemeMatrisi);       % resmi d�zelttik



%imwrite(noiseImage,'g�r�lt�l�Resim.jpg','JPG');
%imwrite(Iout,'g�r�lt�Kald�r�lm��Resim.jpg','JPG');    % �al��ma Sayfas�n�n Oldu�u Yere
                                                    %Resmi Kaydediyoruz

figure('units','normalized','outerposition',[0 0 1 1])      %figure ekran�n� tam ekran a�t�r�yoruz
subplot(2,2,1), imshow(Iin), title('Orjinal G�r�nt�')     
subplot(2,2,2), imshow(noiseImage), title('Tuz-Biber G�r�lt�s� Eklenmi� G�r�nt�')
subplot(2,2,[3 4]), imshow(Iout), title('Tuz-Biber G�r�lt�s� Mean Filtreleme �le Kald�r�lm�� G�r�nt�')

end

