function [ ] = highBoostFiltering( )
% �mer Faruk KO�
% 27.Aral�k.2015


%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi al�yoruz

Iin=imread('kanki.png');   %resmi al�yoruz

meanFiltrelemeMatrisi = fspecial('average', [30 30]);     % mean filtreleme ile
IinBlur = imfilter(Iin, meanFiltrelemeMatrisi);                 % resmi blurla�t�rd�k

Fsharp=Iin-IinBlur;  %Resmin Kendinden Blur Halini ��kar�nca Keskin Resme Ula��r�z

Fhb=2*Iin+Fsharp;   %resmin kendini belli bir katsay� oran�nda keskin resimle �arp�nca 
                    %y�ksek kar��tl��a sahip resme ula��r�z


figure('units','normalized','outerposition',[0 0 1 1])      %figure ekran�n� tam ekran a�t�r�yoruz
subplot(2,2,1), imshow(Iin), title('Orjinal G�r�nt�') 
subplot(2,2,2), imshow(IinBlur), title('Bulan�k G�r�nt�')
subplot(2,2,3), imshow(Fsharp), title('Fsharp -Keskin- G�r�nt�s�')
subplot(2,2,4), imshow(Fhb), title('High Boost -Y�ksek Kar��tl�k- G�r�nt�s�')


end

