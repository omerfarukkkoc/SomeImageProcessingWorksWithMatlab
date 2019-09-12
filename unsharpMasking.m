function [ ] = unsharpMasking( )
% �mer Faruk KO�
% 25.Aral�k.2015


%Iin=imread('C:\Users\omerf\Desktop\mavi.jpg');   %resmi al�yoruz

Iin=imread('img.jpg');   %resmi al�yoruz

H = fspecial('average', [30 30]);     % mean filtreleme ile
IinBlur = imfilter(Iin, H);                 % resmi blurla�t�rd�k

Iout=Iin-IinBlur;       %Resmin Kendinden Blur Halini ��kar�nca Keskin Resme Ula��r�z

figure('units','normalized','outerposition',[0 0 1 1])      %figure ekran� tam ekran a��l�yor
subplot(2,2,1), imshow(Iin), title('Orjinal G�r�nt�') 
subplot(2,2,2), imshow(IinBlur), title('Bulan�k G�r�nt�')
subplot(2,2,[3 4]), imshow(Iout), title('��k�� G�r�nt�s�')


end

