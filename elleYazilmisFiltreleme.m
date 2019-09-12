function [ ] = elleYazilmisFiltreleme( )
% Ömer Faruk KOÇ
% 13.Aralýk.2015

%Iin = imread('C:\Users\omerf\Desktop\Farmers.jpg');   %resmi aldýk
Iin = imread('b.jpg');   %resmi aldýk
Iin = im2double(Iin);   %resmin türünü uint8'den double'a çevirdik 
[IinR IinC]=size(Iin);        %resmin boyularýný aldýk
Iout =Iin;              % çýkýþ resmini giriþ resminden türettik

%filtreMatrisi=[0,1,0;1,-4,1;0,1,0];    %laplacian keskinleþtirme filtre matrisi 
%filtreMatrisi=[1,1,1;1,1,1;1,1,1];         %filtre matrisimizi oluþturduk
filtreMatrisi=[4,3,2;1,-19,1;2,3,4];
[fmR fmC]=size(filtreMatrisi);

araMatris=zeros(fmR,fmC);

for i=2:IinR-1
    for j=2:IinC-1
        for s=-(fmR-2):fmR-2
            for t=-(fmC-2):fmC-2
                 araMatris(s+2,t+2)=(Iin(i+s,j+t))*(filtreMatrisi(s+2,t+2));
            end
        end
        Iout(i,j)=sum(sum(araMatris))/9;
        %laplacian Keskinleþtirme Veya Yatay Dikey Kenar Tespiti Gibi özel
        %matrisler kullanýldýðý zaman px renk deðerleri skalayý aþmayacaðý
        %için /9 ile ortalama hesaplamaya gerek yoktur
    end
end

figure,
subplot(2,2,[1 2]),imshow(Iin), title('Orjinal Görüntü');  
subplot(2,2,[3 4]),imshow(Iout), title('Filtrelenen Görüntü');



end

