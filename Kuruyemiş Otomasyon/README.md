## İçindekiler

1. [Özet](#özet)
2. [Resimler Tablosu](#resimler-tablosu)
3. [Giriş](#giriş)
4. [Form Ekranları](#form-ekranları)
    - [Giriş Yapma Formu](#giriş-yapma-formu)
    - [Kayıt Olma Formu](#kayıt-olma-formu)
    - [Müşteri Girişi](#müşteri-girişi)
    - [Ürünler Formları](#ürünler-formları)
    - [Sipariş Bilgileri Formu](#sipariş-bilgileri-formu)
    - [Sipariş Durumu](#sipariş-durumu)
    - [Personel Ekranı](#personel-ekranı)
    - [Müşteri Bilgileri Formu](#müşteri-bilgileri-formu)
    - [Stok Bilgisi Formu](#stok-bilgisi-formu)
5. [Sonuç](#sonuç)
   
## Özet

Kuruyemiş firması için hazırlanmış bir veri tabanı ile Visual Studio programında C# diliyle hazırlanmış form uygulamaları bulunmaktadır. Bu raporda bahsedilen veri tabanı ile form uygulaması öğrenciler tarafından hazırlanmıştır. Hem müşteriler hem de firma çalışanları tarafından giriş yapılabilmesi için hazırlanan form ile başlamaktadır. Sonraki aşamalarda müşteriler için ürün bilgileri, satın alabilmeleri adına sepetleri; personeller için müşteri bilgilerini ve ürün stoklarını görüntüleyebileceği formlar mevcuttur. Her kategorideki ürünler toplu olarak ayrı form ekranlarında bulunmaktadır.

## Resimler Tablosu

- Resim 1: Yemişler Kuruyemiş Giriş Ekranı
- Resim 2: Personel Girişinin Başarılı Şekilde Sağlanması
- Resim 3: Kayıt Olma Ekranı
- Resim 4: Müşteriler İçin Sepetim Ekranı
- Resim 5: Ekrana Çıkan MessageBox İçeriği
- Resim 6: Menustrip Seçenekleri
- Resim 7: Kabuklu Kuruyemişler
- Resim 8: Kuru Meyveler
- Resim 9: Sütlü Tatlılar
- Resim 10: Sipariş Bilgileri
- Resim 11: Sipariş Durumu
- Resim 12: Sipariş Durumu Sonucu
- Resim 13: Personel Girişi Ekranı
- Resim 14: Müşteri Bilgileri Ekranı
- Resim 15: Sipariş Bilgileri Ekranı
- Resim 16: Stok Bilgisi Ekranı
- Resim 17: Hakkımızda Ekranı

## Giriş

Farklı şubeleri ve bu şubelerde çalışan çalışanlara sahip bir kuruyemiş firması için C# diliyle form uygulaması hazırlanmaktadır. Form uygulamasının içerisinde müşteri bilgilerini, ürünlerin isim ve fiyatlarını, satın alınan ürünlerin kilogramını, fiyatını ve ID’sini alan bir otomasyon sistemi hazırlanmaktadır.

## Form Ekranları

### Giriş Yapma Formu

İlk açılan form müşterilerin ve personellerin giriş yapabilmesini sağlayan bir formdur. Bu form ekranında 2 adet radiobutton, 2 adet label, 2 adet textbox ve 3 adet button bulunmaktadır. Burada giriş yapmak isteyen müşterilerin ve personellerin bilgileri veri tabanı üzerinde tutulmaktadır. Veri tabanında müşteri bilgileri “Musteri_Bilgileri” isimli bir tabloda, personel bilgileri “Personel_Bilgileri” isimli tabloda tutulmaktadır. Burada girilen müşteri bilgileri ve personel bilgileri tabloların içindeki verilerle eşit olduğunda giriş sağlanmaktadır. Müşteri girişi yapılabilmesi adına “Müşteri Girişi” yazılı radiobuttonun, personel girişi yapılabilmesi adına “Personel Girişi” yazılı radiobuttonun seçilmesi gerekmektedir. Kullanıcılar bilgilerini veri tabanındaki verilerle aynı girip “Giriş Yap” butonuna bastığı takdirde başarılı bir şekilde giriş yapabilmektedir ve ekrana başarılı bir şekilde giriş yapıldığına dair bilgi veren bir messagebox gelmektedir. Eğer textboxlar içerisine girilen bilgiler veri tabanındaki veriler ile uyuşmazsa ekrana uyarı yapılabilmesi adına messagebox gelmektedir. Messagebox içerisinde kullanıcı adı veya şifrenin yanlış olabileceği bilgisi verilmektedir. Sağ üstteki “Hakkımızda” butonuna tıklandığında kullanıcı farklı bir form ekranına yönlendirilmektedir. “Kaydolmak İçin Tıklayınız” butonuna tıklandığında ise kayıt olmak isteyen müşteriler için farklı bir form ekranı açılmaktadır.

### Kayıt Olma Formu

Giriş yapma formundaki “Kayıt Olmak İçin Tıklayınız” yazılı butona tıklandığında müşterilerin kayıt olması adına buradaki form ekrana gelmektedir. Bu form ekranında 5 adet label, 5 adet textbox, 2 adet button bulunmaktadır. Buradaki textboxlarda boş geçilemez özelliği mevcuttur. Kayıt olma işlemi sadece müşterilere özel olmakla beraber girilen ad, soyad, kullanıcı adı, şifre ve e-mail bilgileri yazılıp “Kaydol” butonuna tıklandıktan sonra müşterinin başarıyla kayıt olduğuna dair bilgilendirme yapabilmek adına messagebox ekrana gelmektedir ve müşteri giriş yapma ekranına yönlendirilmektedir. Müşterinin kaydolma aşamasında girdiği veriler kayıt olduktan sonra veritabanındaki “Musteri_Bilgileri” isimli tabloya eklenmektedir. Müşteri kayıt olmadan giriş ekranına dönmek isterse sağ altta bulunan “Geri” butonuna tıkladıktan sonra giriş ekranına yönlendirilmektedir. Eğer girilen bilgilerde e-posta adresi ve/veya kullanıcı adı daha önceden kullanılmış ise bu bilgileri giren kullanıcının başka bir e-posta ve/veya kullanıcı adı ile kayıt yapması gerektiğini belirten bir messagebox ekrana gelmektedir.

### Müşteri Girişi

Müşteriler başarıyla giriş yaptıktan sonra ekranlarına eklenmiş menustrip seçenekleri olan yeni bir form ekranı gelmektedir. Burada müşterinin sol üst kısımda sipariş, müşteri ve stok bilgisi alabilecekleri seçenekler bulunmaktadır. Sipariş sekmesi altında “Sipariş Bilgileri” ve “Sipariş Durumu” adında 2 adet seçenek mevcuttur. Müşteri sekmesi altında “Müşteri Bilgileri” seçeneği bulunurken stok sekmesi altında ise “Stok Bilgisi” seçeneği bulunmaktadır.

### Ürünler Formları

Her kategorideki ürünler toplu olarak ayrı form ekranlarında bulunmaktadır.

### Sipariş Bilgileri Formu

Sipariş bilgilerini görüntüleyebilmek adına müşterinin sipariş sekmesi altındaki “Sipariş Bilgileri” seçeneğini seçmesi gerekmektedir. Ekrana gelen form ekranında müşterinin geçmişteki siparişlerini görüntüleyebilmesi adına hazırlanmış datagridview bulunmaktadır. Datagridview üzerinde müşterinin geçmişteki siparişlerinin ürün isimleri, fiyatları, ID’leri, ürün adetleri ve toplam fiyatları bulunmaktadır. Müşteri, satın almış olduğu ürünlerin toplam fiyatını sağ alttaki labelda görebilmektedir.

### Sipariş Durumu

Sipariş durumunu görüntüleyebilmek adına müşterinin sipariş sekmesi altındaki “Sipariş Durumu” seçeneğini seçmesi gerekmektedir. Ekrana gelen form ekranında siparişin kargoya verilip verilmediğini ve kargoya verildiyse kargo aşamasının ne olduğunu görebilmek adına hazırlanmış datagridview bulunmaktadır. Datagridview üzerinde müşterinin geçmişteki siparişlerinin durumları bulunmaktadır. Müşteri, satın almış olduğu ürünlerin sipariş durumlarını bu ekrandan görebilmektedir.

### Personel Ekranı

Personel girişi başarıyla sağlandığında sol üst kısımda müşterilerin bilgilerini, sipariş bilgilerini ve ürünlerin stok bilgilerini görüntüleyebilecekleri seçeneklerin bulunduğu menustrip seçenekleri olan yeni bir form ekranı gelmektedir. Müşteri bilgilerini görüntüleyebilmek adına “Müşteri Bilgileri” seçeneği, sipariş bilgilerini görüntüleyebilmek adına “Sipariş Bilgileri” seçeneği ve ürünlerin stok bilgilerini görüntüleyebilmek adına ise “Stok Bilgisi” seçeneği bulunmaktadır. Personeller, her bir seçeneği seçtikten sonra ekrana gelen datagridviewler üzerinde müşterilerin bilgilerini, sipariş bilgilerini ve stok bilgilerini görüntüleyebilmektedir.

### Müşteri Bilgileri Formu

Müşteri bilgilerini görüntüleyebilmek adına personelin müşteri sekmesi altındaki “Müşteri Bilgileri” seçeneğini seçmesi gerekmektedir. Ekrana gelen form ekranında müşterilerin bilgilerini görebilmek adına hazırlanmış datagridview bulunmaktadır. Datagridview üzerinde müşterilerin isimleri, soyadları, kullanıcı adları, şifreleri ve e-posta adresleri bulunmaktadır. Personel, her bir müşterinin bilgilerini bu ekrandan görebilmektedir.

### Stok Bilgisi Formu

Stok bilgilerini görüntüleyebilmek adına personelin stok sekmesi altındaki “Stok Bilgisi” seçeneğini seçmesi gerekmektedir. Ekrana gelen form ekranında ürünlerin stok bilgilerini görebilmek adına hazırlanmış datagridview bulunmaktadır. Datagridview üzerinde ürünlerin isimleri, fiyatları, ID’leri, stok miktarları ve kategorileri bulunmaktadır. Personel, her bir ürünün stok bilgilerini bu ekrandan görebilmektedir.

## Sonuç

Sonuç bölümünde, proje kapsamında gerçekleştirilen çalışmaların ve elde edilen sonuçların değerlendirilmesi yapılmaktadır. Kuruyemiş firması için hazırlanan bu form uygulaması, firmanın müşteri ve personel yönetimini kolaylaştırmakta, sipariş ve stok takibini efektif hale getirmektedir. Bu proje, görsel programlama ve veri tabanı yönetimi konularında öğrencilerin bilgi ve becerilerini geliştirmelerine katkı sağlamıştır.
