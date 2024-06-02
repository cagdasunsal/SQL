# Bettercap ile M.i.t.M Saldırısı

Bu proje, Bettercap kullanarak Man-in-the-Middle (MitM) saldırılarının nasıl gerçekleştirileceğini anlatan bir kılavuzdur. Proje, İstanbul Gelişim Meslek Yüksekokulu Bilgisayar Teknolojisi Bölümü, Bilişim Güvenliği Teknolojisi Programı öğrencisi Çağdaş Ünsal tarafından hazırlanmıştır.

## İçindekiler
- [Ödev Tanıtım Formu](#ödev-tanıtım-formu)
- [Beyan](#beyan)
- [Kabul ve Onay Sayfası](#kabul-ve-onay-sayfası)
- [Özet](#özet)
- [Ön Söz](#ön-söz)
- [Bettercap](#bettercap)
  - [Bettercap Nedir?](#bettercap-nedir)
  - [Bettercap'in Özellikleri](#bettercapin-özellikleri)
  - [Bettercap İle İlgili Temel Kavramlar](#bettercap-ile-ilgili-temel-kavramlar)
- [Bettercap İçin Gerekli Kurulumlar](#bettercap-için-gerekli-kurulumlar)
  - [Oracle WM VirtualBox Kurulumu](#oracle-wm-virtualbox-kurulumu)
  - [Kali Linux'ta Bettercap Kurulumu](#kali-linux-ta-bettercap-kurulumu)
- [Man-in-the-Middle (MitM) Saldırıları](#man-in-the-middle-mitm-saldırıları)
  - [MitM Saldırıları Hakkında Genel Bakış](#mitm-saldırıları-hakkında-genel-bakış)
  - [MitM Saldırılarının Çalışma Prensibi](#mitm-saldırılarının-çalışma-prensibi)
  - [MitM Saldırılarında Bettercap'in Rolü](#mitm-saldırılarında-bettercapin-rolü)
- [Bettercap Temel Kullanımı](#bettercap-temel-kullanımı)
  - [Bettercap Araçlarının Listesi](#bettercap-araçlarının-listesi)
  - [Bettercap'i Başlatma ve Durdurma](#bettercapi-başlatma-ve-durdurma)
- [Kablosuz Ağlarda MitM Saldırıları](#kablosuz-ağlarda-mitm-saldırıları)
  - [Kablosuz Ağlarda MitM Saldırılarına Genel Bakış](#kablosuz-ağlarda-mitm-saldırılarına-genel-bakış)
  - [Örnek Senaryolar ve Uygulamalar](#örnek-senaryolar-ve-uygulamalar)
- [Kaynakça](#kaynakça)

## Ödev Tanıtım Formu

**Yazar Adı Soyadı:** Çağdaş Ünsal  
**Ödevin Dili:** Türkçe  
**Ödevin Adı:** Bettercap ile M.i.t.M saldırısı  
**Bölüm:** Bilgisayar Teknolojisi  
**Program:** Bilişim Güvenliği Teknolojisi  
**Ödevin Türü:** Final  
**Ödevin Teslim Tarihi:** 02.06.2023  
**Sayfa Sayısı:** 28  
**Ödev Danışmanı:** Öğr. Gör. Çisem YAŞAR

## Beyan

Bu ödevin/projenin hazırlanmasında bilimsel ahlak kurallarına uyulduğu, başkalarının eserlerinden yararlanılması durumunda bilimsel normlara uygun olarak atıfta bulunulduğu, kullanılan verilerde herhangi tahrifat yapılmadığı, ödevin/projenin herhangi bir kısmının bu üniversite veya başka bir üniversitedeki başka bir ödev/proje olarak sunulmadığını beyan ederim. Aksi durumda karşılaşacağım cezai ve/veya hukuki durumu kabul ederim. Ayrıca üniversitenin ilgili yasa, yönerge ve metinlerini okuduğumu beyan ederim.

23.05.2023  
Çağdaş Ünsal

## Kabul ve Onay Sayfası

220175047 numaralı Çağdaş Ünsal’ın Bettercap ile M.I.T.M Saldırısı adlı çalışması, benim tarafımdan Final ödevi olarak kabul edilmiştir.

Çisem YAŞAR  
Öğretim Görevlisi

## Özet

Bu final proje ödevini yaparken bilgisayarda sanal makine oluşturarak Bettercap ile M.I.T.M saldırısı yapılması hedeflenmiş ve kılavuzu hazırlanmıştır.

## Ön Söz

Bu proje ödevini hazırlarken desteklerini esirgemeyen saygıdeğer hocama teşekkür ederim.

## Bettercap

### Bettercap Nedir?

Bettercap, ağ güvenliği testleri ve etik saldırılar için kullanılan araçlardan birisidir. Man-in-the-Middle (MitM) saldırıları gibi çeşitli saldırıları gerçekleştirmek, ağ trafiğini izlemek, analiz etmek ve manipüle etmek için kullanılabilir. Bettercap, ağ güvenliği profesyonelleri ve araştırmacıları tarafından sıkça tercih edilen bir araçtır.

### Bettercap'in Özellikleri

- **Man-in-the-Middle (MitM) Saldırıları:** DNS spoofing, ARP zehirleme (ARP poisoning), SSLstrip gibi MitM saldırıları gerçekleştirebilir.
- **Kapsamlı Modül Desteği:** Farklı saldırıları gerçekleştirmek, ağ trafiğini analiz etmek, oturumları ele geçirmek ve daha fazlasını sağlamak için kullanılabilir.
- **Esnek ve Kullanıcı Dostu Arayüz:** Kullanıcılar, basit komutlar veya grafik arayüz üzerinden araçları kullanabilir, saldırıları yapılandırabilir ve sonuçları izleyebilir.
- **Ağ Trafiği İzleme ve Analiz:** Ağ trafiğini izlemek, analiz etmek ve görselleştirmek için çeşitli araçlar sağlar.
- **Geniş Platform Desteği:** Linux, macOS ve Windows gibi çeşitli işletim sistemlerinde kullanılabilir.

### Bettercap İle İlgili Temel Kavramlar

- **Modüller:** Bettercap'in temel yapı taşlarıdır ve farklı saldırı veya izleme işlevlerini gerçekleştirmek için kullanılır.
- **Config Dosyası:** Bettercap'in davranışını yapılandırmak için kullanılan bir yapılandırma dosyasıdır.
- **Hedefler:** Bettercap ile yapılan saldırı veya izleme işleminin hedefleridir.
- **Paket Yakalama:** Bettercap, ağ trafiğini yakalayabilir ve analiz edebilir.
- **Man-in-the-Middle (MitM) Saldırıları:** Bettercap, DNS spoofing, ARP zehirleme ve SSLstrip gibi MitM saldırılarını gerçekleştirebilir.

## Bettercap İçin Gerekli Kurulumlar

### Oracle WM VirtualBox Kurulumu

Oracle WM VirtualBox'ı [buradan](https://www.virtualbox.org/wiki/Downloads) indirip kurabilirsiniz.

### Kali Linux'ta Bettercap Kurulumu

Kali Linux'u [buradan](https://www.kali.org/get-kali/#kali-platforms) indirip sanal makineye kurduktan sonra, terminalde `bettercap` komutunu yazarak Bettercap'i kurabilirsiniz.

## Man-in-the-Middle (MitM) Saldırıları

### MitM Saldırıları Hakkında Genel Bakış

MitM saldırıları, ağ güvenliği alanında önemli bir tehdit oluşturan ve hassas bilgilerin ele geçirilmesine, trafiğin manipüle edilmesine veya oturumların ele geçirilmesine yol açabilen saldırı türleridir.

### MitM Saldırılarının Çalışma Prensibi

Saldırgan, kendisini hedef ağdaki iletişimin ortasına yerleştirerek iletişimi alıcı ve gönderici arasında yönlendirir. Bu sayede trafiği izleyebilir, değiştirebilir veya çalabilir.

### MitM Saldırılarında Bettercap'in Rolü

Bettercap, MitM saldırılarını gerçekleştirmek için özel olarak tasarlanmış modüllere sahiptir. Saldırgan, bettercap'i kullanarak bu modülleri etkinleştirerek hedef ağdaki saldırıları gerçekleştirebilir.

## Bettercap Temel Kullanımı

### Bettercap Araçlarının Listesi

- **Packet Sniffer (Paket Yakalayıcı):** Ağ trafiğini yakalar ve paketlerin içeriğini analiz eder.
- **DNS Spoofer (DNS Sahtekarlığı):** DNS isteklerini taklit eder ve hedef kullanıcıları yanıltarak yanlış DNS yanıtları gönderir.
- **ARP Spoofing (ARP Sahtekarlığı):** ARP tablosunu manipüle ederek hedef ağdaki iletişimi yönlendirir ve hedef cihazları yanıltır.
- **SSLstrip:** HTTPS bağlantılarını HTTP'ye düşürerek, şifreli verilerin çözülmesini sağlar.
- **Captive Portal:** Hedef kullanıcıları, sahte bir oturum açma sayfasına yönlendirerek kimlik bilgilerini çalmak için kullanılır.
- **HTTP Proxy:** Hedef kullanıcıların HTTP trafiğini yönlendirerek, istek ve yanıtları inceleme veya değiştirme yeteneği sağlar.

### Bettercap'i Başlatma ve Durdurma

Bettercap'i başlatmak için terminale `bettercap` komutunu yazabilirsiniz. Durdurmak için ise `exit` komutunu kullanabilirsiniz.

## Kablosuz Ağlarda MitM Saldırıları

### Kablosuz Ağlarda MitM Saldırılarına Genel Bakış

Kablosuz ağlarda yapılan MitM saldırıları, kablosuz trafiğin ele geçirilmesi ve manipüle edilmesi gibi tekniklerle gerçekleştirilir. Bu tür saldırılar, özellikle halka açık Wi-Fi ağlarında büyük bir tehdit oluşturur.

### Örnek Senaryolar ve Uygulamalar

- **Halka Açık Wi-Fi Ağlarında Veri Çalınması:** Halka açık Wi-Fi ağlarına bağlanarak kullanıcıların veri trafiğini ele geçirmek.
- **Kurumsal Ağlarda Hassas Bilgilerin Çalınması:** Kurumsal ağlarda MitM saldırıları gerçekleştirerek hassas iş bilgilerini ele geçirmek.

## Kaynakça

- Bettercap Resmi Dokümantasyonu: [https://www.bettercap.org/](https://www.bettercap.org/)
- Kali Linux Resmi Sitesi: [https://www.kali.org/](https://www.kali.org/)
- VirtualBox Resmi Sitesi: [https://www.virtualbox.org/](https://www.virtualbox.org/)

