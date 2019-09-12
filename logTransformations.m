function [  ] = logTransformations(  )
%�mer Faruk KO�
%27.Kas�m.2015

Iin=imread('umut.jpg');   %resmi ald�k
IinDouble=im2double(Iin);        %resmin px de�erleri �zerinde i�lem yapabilmek i�in t�r�n� uint8'den double'a �evirdik 

Iout=IinDouble;

[IinR,IinC]=size(IinDouble);
katsayi=3.5;

for i=1:IinR
	for j=1:IinC
		Iout(i,j)=katsayi*log(1+IinDouble(i,j));
	end
end

%k�sa kullan�m
%x=factor*log(1+ad);

figure('units','normalized','outerposition',[0 0 1 1])
imshowpair(Iin,Iout,'montage'); 



end

