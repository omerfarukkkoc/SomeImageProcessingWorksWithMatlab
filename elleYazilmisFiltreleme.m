function [ ] = elleYazilmisFiltreleme( )
% �mer Faruk KO�
% 13.Aral�k.2015

%Iin = imread('C:\Users\omerf\Desktop\Farmers.jpg');   %resmi ald�k
Iin = imread('b.jpg');   %resmi ald�k
Iin = im2double(Iin);   %resmin t�r�n� uint8'den double'a �evirdik 
[IinR IinC]=size(Iin);        %resmin boyular�n� ald�k
Iout =Iin;              % ��k�� resmini giri� resminden t�rettik

%filtreMatrisi=[0,1,0;1,-4,1;0,1,0];    %laplacian keskinle�tirme filtre matrisi 
%filtreMatrisi=[1,1,1;1,1,1;1,1,1];         %filtre matrisimizi olu�turduk
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
        %laplacian Keskinle�tirme Veya Yatay Dikey Kenar Tespiti Gibi �zel
        %matrisler kullan�ld��� zaman px renk de�erleri skalay� a�mayaca��
        %i�in /9 ile ortalama hesaplamaya gerek yoktur
    end
end

figure,
subplot(2,2,[1 2]),imshow(Iin), title('Orjinal G�r�nt�');  
subplot(2,2,[3 4]),imshow(Iout), title('Filtrelenen G�r�nt�');



end

