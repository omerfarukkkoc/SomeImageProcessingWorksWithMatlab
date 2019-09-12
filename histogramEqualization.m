function [ ] = histogramEqualization( )
%Ömer Faruk KOÇ
%20.Ekim.2015

Iin=imread('ay2.jpg');
IinGray=rgb2gray(Iin);
figure;
imshow(IinGray);
title('Orjinal Gri Resim');

h=imhist(IinGray);

pr=h/numel(IinGray);
figure;
plot(pr);
title('Prnin Görüntüsü');

figure;
plot(h);
title('Histogram');

sk(1)=pr(1);
for i=2 : numel(pr)
    sk(i)=pr(i)+sk(i-1);
end

sk=sk*255;

IoutGray=IinGray;
N=size(IinGray);

for i=1 : N(1)
    for j=1 :N(2)
        index=IinGray(i,j)+1;
        IoutGray(i,j)=sk(index);
    end
end

figure;
imshow(IoutGray);
title('Çýkýþ Resmi');


end

