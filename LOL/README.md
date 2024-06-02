## İçindekiler

1. [Özet](#özet)
2. [Resimler](#resimler)
3. [Önsöz](#önsöz)
4. [Veri Tabanı Tasarımı ve Modellenmesi](#veri-tabanı-tasarımı-ve-modellenmesi)
   - [Gereksinimlerin Toplanması](#gereksinimlerin-toplanması)
   - [Kavramsal Model](#kavramsal-model)
   - [Mantıksal Model](#mantıksal-model)
   - [Fiziksel Model](#fiziksel-model)

## Özet

Bu proje, LOL oyunu için bir veri tabanı tasarımını içermektedir. Projede, kullanıcıların, şampiyonların, maçların ve oyuncu istatistiklerinin tutulduğu çeşitli tablolar oluşturulmuş ve modellenmiştir.

## Resimler

Projenin çeşitli aşamalarında kullanılan resimler bu bölümde yer almaktadır.

## Veri Tabanı Tasarımı ve Modellenmesi

### Gereksinimlerin Toplanması

LOL oyunu için aşağıdaki tablolar tasarlanmıştır:

- **Kullanıcılar Tablosu:** Kullanıcı adı, e-posta, şifre gibi bilgileri içerir.
- **Şampiyonlar Tablosu:** Şampiyon adı, sınıfı, yetenekleri, saldırı gücü gibi bilgileri içerir.
- **Oyuncu Şampiyonları Tablosu:** Kullanıcıların hangi şampiyonları kullandığını ve bu şampiyonlarla ilgili istatistikleri içerir.
- **Maçlar Tablosu:** Oynanan maçların genel bilgilerini içerir.
- **Maç Detayları Tablosu:** Her maçın detaylarını içerir.
- **Oyuncu İstatistikleri Tablosu:** Her oyuncunun genel istatistiklerini içerir.
- **Rütbe Tablosu:** Oyuncuların rütbe bilgilerini içerir.
- **Eşya Tablosu:** Oyundaki eşyaların bilgilerini içerir.
- **Şampiyon Yetenekleri Tablosu:** Şampiyonların yeteneklerini ve bu yeteneklerin özelliklerini içerir.
- **Haritalar Tablosu:** Oyundaki haritaların bilgilerini içerir.

### Kavramsal Model

Kavramsal modelin detayları projenin ilgili kısmında yer almaktadır.

### Mantıksal Model

- **Kullanıcılar:** (kullanıcıID, adı, şifre, şampiyonlar)
- **Şampiyonlar:** (Şampiyonid, adı, sınıf, yetenekler, saldırıgücü, oyuncuşampiyonları)
- **OyuncuŞampiyonları:** (id, kazanmaoranı, maçlar, kullanıcıid, şampiyonid)
- **Maçlar:** (id, tarih, süre, maçdetayları)
- **MaçDetayları:** (id, kazanan, maçsonucu, oyuncuistatistikleri, maçid, kullanıcıid)
- **Oyuncuİstatistikleri:** (id, toplamOynananMaçSayısı, ToplamKazanılanMaçSayısı, Rütbe)
- **Rütbe:** (id, adı, puanı, eşya)
- **Eşyalar:** (id, adı, fiyat, özellikler, şampiyonYetenekleri)
- **Yetenekler:** (id, yetenekadi, yetenekAçıklaması, Haritalar, şampiyonid)
- **Haritalar:** (id, adi, boyut, oynanabilirÖzellikleri)

### Fiziksel Model

Fiziksel modelin detayları projenin ilgili kısmında yer almaktadır.
