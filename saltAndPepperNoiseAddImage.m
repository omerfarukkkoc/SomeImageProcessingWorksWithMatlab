function [ ] = saltAndPepperNoiseAddImage( )
% �mer Faruk KO�
% 25.Kas�m.2015

%Dijital G�r�nt� ��leme - Salt And Pepper Noise


Iin=imread('eye.png');   %resmi al�yoruz

%Iout = imnoise(Iin,'salt & pepper', 0.8);
Iout = imnoise(Iin, 'salt & pepper' , 0.2);     %G�r�lt� Ekliyoruz


imshowpair(Iin,Iout,'montage');              %Resmi Yanyana Birle�tirilmi� Olarak A��yoruz
%imwrite(Iout,'noiseImage.jpg','JPG');      % �al��ma Sayfas�n�n Oldu�u Yere
                                            %Resmi Kaydediyoruz

%figure
%subplot(2,2,1), imshow(Iin), title('Orjinal G�r�nt�')     
%subplot(2,2,2), imshow(Iout), title('Tuz-Biber G�r�lt�s� Eklenmi� G�r�nt�')

end

