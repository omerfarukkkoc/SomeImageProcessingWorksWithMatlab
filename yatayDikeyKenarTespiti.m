function [ ] = yatayDikeyKenarTespiti( )
% Ömer Faruk KOÇ
% 25.Aralık.2015


%Iin = imread('C:\Users\omerf\Desktop\mavi.jpg');   %resmi aldık

Iin = imread('iii.jpg');   %resmi aldık
Iin = im2double(Iin);   %resmin türünü uint8'den double'a çevirdik 
[IinR IinC]=size(Iin);        %resmin boyularını aldık
IoutYatayKenar =Iin;              % çıkış resmini giriş resminden türettik
IoutDikeyKenar =Iin;                % çıkış resmini giriş resminden türettik

%filtreMatrisi=[-2,-2,0;-2,0,2;0,2,2];  % yatay-dikey kenar tespiti
filtreMatrisiYatayKenar=[-1,-2,-1;0,0,0;1,2,1];  % yatay kenar tespiti
filtreMatrisiDikeyKenar=[-1,0,1;-2,0,2;-1,0,1];   % dikey kenar tespiti

[fmR fmC]=size(filtreMatrisiYatayKenar);

araMatrisYatayKenar=zeros(fmR,fmC);
araMatrisDikeyKenar=zeros(fmR,fmC);

for i=2:IinR-1
    for j=2:IinC-1
        for s=-(fmR-2):fmR-2
            for t=-(fmC-2):fmC-2
                 araMatrisYatayKenar(s+2,t+2)=(Iin(i+s,j+t))*(filtreMatrisiYatayKenar(s+2,t+2));
                 araMatrisDikeyKenar(s+2,t+2)=(Iin(i+s,j+t))*(filtreMatrisiDikeyKenar(s+2,t+2));
            end
        end
        IoutYatayKenar(i,j)=sum(sum(araMatrisYatayKenar));
        IoutDikeyKenar(i,j)=sum(sum(araMatrisDikeyKenar));
    end
end


figure,
subplot(2,2,[1 2]),imshow(Iin), title('Orjinal Görüntü');  
subplot(2,2,3),imshow(IoutYatayKenar), title('Yatay Kenar Tespiti');
subplot(2,2,4),imshow(IoutDikeyKenar), title('Dikey Kenar Tespiti');




end

