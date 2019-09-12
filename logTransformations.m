function [  ] = logTransformations(  )
%Ömer Faruk KOÇ
%27.Kasým.2015

Iin=imread('umut.jpg');   %resmi aldýk
IinDouble=im2double(Iin);        %resmin px deðerleri üzerinde iþlem yapabilmek için türünü uint8'den double'a çevirdik 

Iout=IinDouble;

[IinR,IinC]=size(IinDouble);
katsayi=3.5;

for i=1:IinR
	for j=1:IinC
		Iout(i,j)=katsayi*log(1+IinDouble(i,j));
	end
end

%kýsa kullaným
%x=factor*log(1+ad);

figure('units','normalized','outerposition',[0 0 1 1])
imshowpair(Iin,Iout,'montage'); 



end

