function [ ] = threshold(  )

%�mer Faruk KO�
%22.Kas�m.2015

%Dijital G�r�nt� ��leme - Threshold

%Iin=imread('C:\Users\omerf\Desktop\ay2.jpg');   %resmi al�yoruz

Iin=imread('ay2.jpg');   %resmi al�yoruz

IinGray=rgb2gray(Iin);      %griye �eviriyoruz

Iout=IinGray;

[M N]=size(IinGray);

for i=1 : M
    for j=1 :N
        if(IinGray(i,j)<=50)
            Iout(i,j)=0;
        end
        if(IinGray(i,j)>=200)
            Iout(i,j)=255;
        end
    end
end

figure('units','normalized','outerposition',[0 0 1 1])      %fig�r penceresini tam ekran a�t�r�yoruz
%imshow(IinGray), title('Orjinal Gri G�r�nt�');

imshowpair(IinGray,Iout,'montage');
end

