function [ ] = elleYazilmisImhist( )
% �mer Faruk KO�
% 20.Kas�m.2015

Iin=imread('select.jpg');
IinGray=rgb2gray(Iin);
a=imhist(IinGray);


N=size(IinGray);
h=zeros(1,256);
for i=1 : N(1)
    for j=1 :N(2)
        index=IinGray(i,j)+1;
        h(index)=h(index)+1;
    end
end

figure,
subplot(2,2,[1 2]),plot(a), title('Orjinal �mhist Fonksiyonu �le Bulunan Histogram');  
subplot(2,2,[3 4]),plot(h), title('Kendi Yapt���m�z ��lemden ��kan Histogram');
end

