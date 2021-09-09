% Anugerah A'raaf Disman
% 200209500014
% PTIK - B

% Gambar Dengan Citra Berwarna
Picture = imread('Anugerah.jpeg');
figure(1); imshow(Picture)

% Gambar Citra Berwarna Ke Citra Keabuan
Gray_picture = (Picture(:,:,1) + Picture(:,:,2) + Picture(:,:,3)) / 3;
figure(2); imshow(Gray_picture)

% Gambar Citra Keabuan Dengan Konstanta
Gray_Konstan = Picture(:,:,1) * 0.4 + Picture(:,:,2) * 0.32 + Picture(:,:,3) * 0.28;
figure(3); imshow(Gray_Konstan)

% Gambar Citra Keabuan Dengan Biner
Basis_2 = 80;
[kolom, baris] = size(Gray_Konstan);
Gray_Biner = zeros(kolom, baris);

for a = 1 : kolom
for b = 1 : baris
if (Gray_Konstan(a,b) > Basis_2)
Gray_Biner(a,b) = 1;
else
Gray_Biner(a,b) = 0;
end
end
end
figure(4); imshow(Gray_Biner)

% Gambar Citra Brightness
Brightness_picture = Gray_Konstan + 70;
figure(5); imshow(Brightness_picture)

% Gambar Dengan Citra Kontras
Picture_kontras = Gray_Konstan * 1.1;
figure(6); imshow(Picture_kontras)