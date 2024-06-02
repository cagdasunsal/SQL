use Kuruyemiþ

select * from Musteri_Bilgileri

select Musteri_ID, Ad, Soyad from Musteri_Bilgileri where Ad like 'D%' 

select Ad, Soyad, Pozisyon from Personeller

select  Adres_no, Ulke, Sehir, Ilce, Acik_Adres from Adres_Bilgileri where Adres_no='3'

SELECT U.Urun_Kodu, U.Tedarikci_kodu, U.Kategori_ID, U.Urun_Adi, U.Fiyat,
       T.Tedarikci_ID, T.Tedarikci_Adi, T.Tedarikci_Adres, T.Telefon, T.Telefon2
FROM [Kuruyemiþ].[dbo].[Urunler] U
INNER JOIN [Kuruyemiþ].[dbo].[Tedarikciler] T ON U.Tedarikci_kodu = T.Tedarikci_ID

SELECT S.Islem_Kodu, S.Urun_Kodu, S.Sube_ID, S.Miktar, S.Tarih, S.Islem_Turu,
       U.Urun_Adi, U.Fiyat
FROM [Kuruyemiþ].[dbo].[Stoklar] S
INNER JOIN [Kuruyemiþ].[dbo].[Urunler] U ON S.Urun_Kodu = U.Urun_Kodu


SELECT U.Urun_Adi, SUM(S.Miktar) AS ToplamStok
FROM [Kuruyemiþ].[dbo].[Stoklar] S
INNER JOIN [Kuruyemiþ].[dbo].[Urunler] U ON S.Urun_Kodu = U.Urun_Kodu
GROUP BY U.Urun_Adi

SELECT Kategori_ID, MAX(Fiyat) AS EnYuksekFiyat, MIN(Fiyat) AS EnDusukFiyat
FROM [Kuruyemiþ].[dbo].[Urunler]
GROUP BY Kategori_ID


SELECT U.Kategori_ID, AVG(U.Fiyat) AS OrtalamaFiyat
FROM [Kuruyemiþ].[dbo].[Urunler] U
GROUP BY U.Kategori_ID


SELECT TOP 10 K.Kargo_Kodu, K.Durum, K.Kargo_Teslim_Tarihi
FROM [Kuruyemiþ].[dbo].[Kargo] K
ORDER BY K.Kargo_Teslim_Tarihi DESC


SELECT MONTH(Siparis_Tarihi) AS Ay, COUNT(*) AS ToplamSiparis
FROM [Kuruyemiþ].[dbo].[Siparisler]
GROUP BY MONTH(Siparis_Tarihi)

SELECT M.Musteri_ID, M.Ad, M.Soyad, M.KullaniciAdi, M.Sifre, M.Email,
       S.Siparis_ID, S.M_ID, S.Siparis_Tarihi, S.Toplam_Tutar
FROM [Kuruyemiþ].[dbo].[Musteri_Bilgileri] M
INNER JOIN [Kuruyemiþ].[dbo].[Siparisler] S ON M.Musteri_ID = S.M_ID


SELECT SD.Siparis_ID, SD.Urun_Kodu, SD.Birim_Fiyati, SD.MiktarKG,
       S.Siparis_Tarihi, S.Toplam_Tutar
FROM [Kuruyemiþ].[dbo].[SiparisDetaylari] SD
INNER JOIN [Kuruyemiþ].[dbo].[Siparisler] S ON SD.Siparis_ID = S.Siparis_ID


SELECT S.Siparis_ID, SUM(SD.Birim_Fiyati * SD.MiktarKG) AS ToplamTutar
FROM [Kuruyemiþ].[dbo].[SiparisDetaylari] SD
INNER JOIN [Kuruyemiþ].[dbo].[Siparisler] S ON SD.Siparis_ID = S.Siparis_ID
GROUP BY S.Siparis_ID

select Urun_Kodu, MiktarKG from [SiparisDetaylari]
where  Birim_Fiyati between 0 and 20 order by Urun_Kodu desc

SELECT Ad, REVERSE(Ad) AS TersAd FROM Personeller
use Kuruyemiþ

SELECT Pozisyon, REPLACE(Pozisyon, 'Müdür', 'Yetkili') AS Unvan FROM Personeller WHERE Pozisyon = 'Müdür'

select Fiyat, ceiling(Fiyat) as 'Yukarý Yuvarla',Floor(Fiyat) as 'Aþaðý Yuvarla', round(Fiyat,1) as 'küsürat at' from Urunler

select Ad, Soyad, Datepart(year,Ise_Baslama_Tarihi) as 'Ýþe Baþlama Tarihi' from Personeller

select Ad,Soyad, charindex('a', Ad) from Personeller

SELECT Tedarikci_Adi, COALESCE(Telefon2, '2. Telefon Bilgisi Yok') AS Telefon FROM Tedarikciler;

select Ad, Upper(Soyad) as Soyad , lower(Pozisyon) as Pozisyon from Personeller 

select Pozisyon, len(Pozisyon) as harf_sayýsý from Personeller

select Ad,Left(Ad,2),Soyad,Right(Soyad,3), substring(Pozisyon,2,3) from Personeller 

select Ad, Pozisyon, substring(Pozisyon, Len(Ad), 3),left(Ad,len(Pozisyon)) From Personeller

select Urun_Adi,Siparis_ID,SD.Birim_Fiyati, case  when Indirim_Orani = 0 then 'Standart'
                                   when Indirim_Orani between 0.01 and 0.05 then 'Ýndirimli'
								   when Indirim_Orani between 0.06 and 0.10 then 'Flaþ Ýndirim'
								   when Indirim_Orani between 0.11 and 0.20 then 'Süper Ýndirim'
								   when Indirim_Orani <0.20  then 'Mega Ýndirim'
								   else 'indirim Bulunamadý' end from [SiparisDetaylari] SD join Urunler U on U.Urun_Kodu=SD.Urun_Kodu  join KampanyaVeIndirimler K on U.Urun_Kodu=K.Indirim_Orani

select Ad, left(Ad,2)+ substring(Ad,charindex(' ',Ad)+3,2)+
 convert(nvarchar,right(Soyad,2))+substring(Email,2,1)+substring(Email,5,1)+ Upper(left(KullaniciAdi,1))+upper(right(KullaniciAdi,1)) from Musteri_Bilgileri

