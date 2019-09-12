function [ ] = laplacianKeskinlestirmeFiltresi( )
% �mer Faruk KO�
% 13.Aral�k.2015


%Iin = imread('C:\Users\omerf\Desktop\DSC_0029.jpg');   %resmi ald�k
Iin = imread('marriage.jpg');   %resmi ald�k
%Iin = imread('mavi.jpg');   %resmi ald�k
Iin = im2double(Iin);   %resmin px de�erleri �zerinde i�lem yapabilmek i�in t�r�n� uint8'den double'a �evirdik 
[m n]=size(Iin);        %resmin boyular�n� ald�k
Iout =Iin;              % ��k�� resmini giri� resminden t�rettik


H = fspecial('laplacian');  %haz�r fonksiyonla 
IoutAuto= imfilter(Iin,H);  %filtreleme yap�yoruz


for i=2:m-1         % kendi fonksiyonumuzla filtreleme yap�yoruz
    for j=2:n-1
        Iout(i,j) =(Iin(i-1,j)+Iin(i+1,j)+Iin(i,j-1)+Iin(i,j+1))-4*Iin(i,j);
    end
end
figure,
subplot(2,2,[1 2]),imshow(Iin), title('Orjinal G�r�nt�');  
subplot(2,2,3),imshow(Iout), title('Kendi Matrisimizle Filtrelenen G�r�nt�');
subplot(2,2,4),imshow(IoutAuto), title('Haz�r Fonksiyonla Filtrelenen G�r�nt�');

figure,
subplot(2,2,[1 2]),imhist(rgb2gray(Iin)), title('Orjinal G�r�nt� Histogram�');  
subplot(2,2,[3 4]),imhist(rgb2gray(Iout)), title('Filtrelenen G�r�nt� Histogram� ');


end

