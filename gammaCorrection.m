function [ ] = gammaCorrection( )
%�mer Faruk KO�
%27.Kas�m.2015

Iin=imread('img.jpg'); %resmi ald�k
gamma = [0.05,0.2,0.67,1.5,2.5,5];      %gama de�erleri i�in dizi olu�turduk
katsayi=8;
Iout=katsayi.*im2double(Iin).^(gamma(5)); %gama form�l�

subplot(2,2,[1 2]),imshow(Iin), title('Orjinal G�r�nt�');  
subplot(2,2,[3 4]),imshow(Iout), title('��k�� G�r�nt�s�');

end

