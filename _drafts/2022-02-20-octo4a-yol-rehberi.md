---
layout: post
title: Octo4a Yol Rehberi
date: 2022-02-20 14:12 +0100
categories: 3d-printing
tags: octo4a octoprint turkce
---
> Octo4a'in erkenden kullanamaya başlayanlar biri olduğumdan dolayı sürekli Türk arkadaşlar beni bulup yardım istiyorlar. 1-2 Kişiye direk yardım etmek yerine orjinalini İngilizce yazdığım dokümanı Türkçeye çevirmeye karar verdim. Bütün gün herkesle İngilizce konuşmaktan, Türkçem de biraz bozulmaya başladı anlaşılmayan bir yer olursa affola.

Muhteşem insan Gina Häußge, Octoprint projesini başlatalı nerdeyse 10 sene oldu. Bu projeyi kullanarak 3D Yazıcınızı istediğiniz yerden kontrol edebilir veya uzaktan kontrol edebilirsiniz. Genelde insanlar bu programı Raspberry Pi ile kullanırlar ama artık bu tek çözüm değil! 

Eski bir Android telefonunuz bir çekmecede toz topluyorsa, buna Octo4a isimli uygulamayı kurarak hiç harcama yapmaksızın Octoprint'i kullanmaya başlayabilirsiniz. Bu yöntem Raspberry Pi gibi anahtar teslim bir yöntem değil ama ortada hiç korkulcak birşey yok.

Bu rehberde size telefonunuzu nasıl kurmanız gerektiği hakkında yol göstericeğim. Bir kaç uygulama kurmak zor birşey değil ama [resmi yardım grubunda](https://t.me/octo4achat) insanlar bazen kurulum yaparken sıkıntı yaşadığına şahit oldum. Bu sıkıntıları yok etmek amaçlı genel nasıl kurulum yapılcağı hakkında bilgiler paylaşacağım. Android telefon modelleri derya deniz olduğundna "donanım" kısmına fazla dokunmayacağım. Olayın özünde telefonunuzu aynı zamanda hem şarj olup hem OTG modunda çalıştırmanın bir yolunu bulmanız yeterli, ama bu yol her telefon için değişik oluyor. O yüzden hiç o topa girmiyorum.

# Hazırlıklar
Başlamadan önce, telefonunuzu en azından fabrika ayarlarına almanızı tavsiye ederim. Custom ROM işlerinden anlıyorsanız bulabildiğiniz en az yer kaplayan ve en az RAM harcayan bir ROM yüklemenizi şiddetle tavsiye ederim. Böylece telefonunuz gereksiz yere enerji ve kaynak harcamayacaktır.

# Octo4a 1.0!
Ben çevirene kadar Octo4a 1.0 çıkalı çok zaman geçse de, Octo4a 1.0 yayınlandı! Geçtiğimiz seneden beri, Filip (uygulamanın yaratıcısı) herşeyi söküp tekrar baştan başladığından çok bahsetti. O yüzden 0.x versiyonu kullanıyorsanız, dosyalarının bir yedeğini alıp başka bir aletde saklamalarını şiddetle tavsiye ediyorum.

Octo4a App Store'da yayınlanan bir uygulama değil. O yüzden [Octo4a Github Sayfasına](https://github.com/feelfreelinux/octo4a/releases) gidip en güncel versiyonu indiriyoruz. Daha önce hiç ikincil bir kaynaktan APK kurmadıysanız, şu [(inglizce) kaynağı takip edip öğrenebilirsiniz](https://www.androidauthority.com/how-to-install-apks-31494/). Uzun lafın kısası, ne zaman telefonunuz size bir soru sorduğunda Evet butonuna basmanız yeterli. **Siber Güvenlik Hatırlatması: Asla güvenmediğiniz bir kaynaktan APK dosyaları indirip kurmayın.**

Uygulama kurulduktan sonra, uygulama Octoprint'i kurmaya çalışacak. Normalde bu kısım otomatik olarak gerçekleşiyor. Eğer beklenmedik bir olay oluşursa uygulama sizi bilgilendiriyor. Bu durumda herşeyi silip baştan kurmanız en garanti çözüm.

Eğer eski bir sürümden geliyorsanız, burası yedekleme dosyasını kullandığımız nokta. Octoprint'e internet tarayıcınızdan girdikten sonra dosyanızı yükleyip eski ayarlarınıza dönebilirsin. Ayarlar yüklendikten sonra ayarlara girip "serial ports" ayarını `/dev/ttyOcto4a` yapmanız ve "black list" kısmını temizlemeniz gerekmekte.
![Port Setup](/assets/2021-10-10-ultimate-guide-to-octo4a/port.png)

Eğer yeni bir kullanıcıysanız, Octoprint'e herhangi bir internet tarayacısından bağlanabilirsiniz. [Bunu yapmak için telefonunuzun IP'sini bilmeniz gerekmekte.](https://www.makeuseof.com/tag/find-ip-address-mobile-smartphone/) Tarayıcınıza `<Telefonun IPsi>:5000` yazdığınızda arayüzün açılması gerekiyor. Örneğin, `http://192.168.1.255:5000/`. Karşınıza ilk çıkıcak ekran kurulum ekranı olacak, bunu takip etmesi kolay ve düz. Eğer IP kısmında bir sıkıntı yaşarsanız kurduğunuz telefonun internet tarayıcısından `http://localhost:5000/` adresini deneyebilirsiniz.

# Kamera Ayarları
Octo4a kendi kamera sistemiyle beraber gelmekte. Daha önceki sürümlerde bir çok sıkıntı yaşansa da yeni sürümde bu sıkıntıların çoğu çözüldü. Ama yinede inanılmaz bir sayıda farklı kamera olduğundan her telefonda düzgün çalışmayabiliyor veya ısınma gibi sıkıntılar yaratıyor. Misal, benim şuan kullandığım telefonun kamera modülü sürekli açık kalırsa 80-90 dereceye kadar ısınmakta. Böyle durumlarda üçüncü parti bir kamera uygulamasını tavsiye ediyorum. Bu uygulamanın adı "IP Webcam". İsterseniz [Google Play](https://play.google.com/store/apps/details?id=com.pas.webcam) kulanarak indirebilir yada güvendiğiniz bir APK'sını bulabilirsiniz.

Ben IP Webcam Uglamasında şu ayarları tavsiye ediyorum. (Uygulama dili ingilizce olduğundan Ayarları İngilizce Bıraktım.)
* Video Preferences/Video Resolution: 1280x720, 720p ne basılıyor ne hata var görmek için yeterli bir çözünürlük.
* Video Preferences/Focus Mode: Smooth, for recording video.
* Power Management/Stop Camera: Disabled.
* Power Management/Deactivate Display: Enabled.
* Power Management/Keep Screen Active: Disabled.
* Power Management/Shallow Sleep: Enabled.
* Power Management/Stream on Device Boot: Enabled.
* Audio Mode: Disabled.
* Optional Permissions/Allow Streaming in Background: Enabled.

Eğer bu yöntemi kullancaksanız Octoprint üzerinden kamera ayarlarını güncellemeniz gerekmektedir.
![Port Setup](/assets/2021-10-10-ultimate-guide-to-octo4a/webcam.png)

# Uzaktan Erişim
Yıllardır ZeroTier isimli bir uygulamayı gördüğüm herkese tavsiye ediyorum. Eski oyuncular hatırlar bi ara Hamachi diye bir bela vardı, bu ona çok benziyen bir program. Her aletinize ZeroTier kurduğunuzda aletleriniz aynı ev ağına bağlı olduklarını zannediyor ve dışardan hiç kimse bu aletlere ulaşamıyor. Bu method hem güvenli hem kolay ama tek kötü yanı Octoprint'e bağlanmak istediğiniz her alete de bu programı kurmanız gerekmekte. [Zerotier'ın kendi sitesi herşeyi çok detaylı anlatıyor, tekerleği tekrar bulmanın lüzmu yok.](https://www.zerotier.com/download/)

Şimdi telefonunuz ev ağı IPsi yerine, Zerotier IPsini kullanmaya başlayacaksınız. Örneğin camera ayarlarındaki IP'nin artık Zerotier'ın IPsi olması gerekiyor. Telefonunuzun Zerotier IPsini uygulamanın içinden ağ adına basarak bulabiliriniz.
<img src="/assets/2021-10-10-ultimate-guide-to-octo4a/zerotier0.png" width="50%"><img src="/assets/2021-10-10-ultimate-guide-to-octo4a/zerotier1.png" width="50%">

# Android'e Uzaktan Erişim
Telefonunuza uzaktan erişmeniz gerektiğinde [Droid VNC-NG](https://github.com/bk138/droidVNC-NG) isimli uygulamayı kurabilirsiniz. Bu uygulamayı kurduktan sonra, telefonunuzun başına gidip ayarları değiştirmenize hiç gerek kalmayacaktır. Bağlanmak için herhangi bir "VNC Client" programına girip Zerotier IPsini vermeniz yeterli.

Kurulum yine kolay ve düz. Yine bu uygulama Google Play'de bulunmuyor. [Droid VNC-NG Github sayfasından](https://github.com/bk138/droidVNC-NG) indirebilirsiniz. Uygulama kurunca uygulama kurulum modunda açılcak ve size ne yapmanız gerektiğini söyleyecektir. Bundan sonra sadece bir ayarı güncellemeniz gerekmekte. Çift uyanışta uyanma özelliğini aktive etmeniz gerekmekte. Telefonunuza ne zaman bağlanırsanız, kitli olacak. Böylece bağlandığınız aletden, çift tıkla telefonunuzun kilidini açabilir hale geleceksiniz.

<img src="/assets/2021-10-10-ultimate-guide-to-octo4a/double_wake.png" width="50%">

Artık herhangi bir VNC uygulamasıyla telefonunuza uzaktan bağlanabilirsiniz. Tavsiyem Windows, iOS ve Android sistemlerde "VNC Viewer" kullanmanız. Linux'taysa Remmina vazgeçilmez bir uygulama.

# Dosya Yönetimi
Uygulamanın yeni bir versiyonu çıktığında veya herhangi bir şekilde telefonuza bir dosya yollamak istediğinizde bu işin çok kolay bir yolu var. Telefonunuza bir FTP sunucusu (**F**ile **T**ransfer **P**rotocol) kurmanız durumunda hayatınız çok kolaylaşcak. FileZilla en çok kullanılan FTP programlarından biridir, tavsiye ederim.

You can get FTP Server on [Google Play](https://play.google.com/store/apps/details?id=net.xnano.android.ftpserver&hl=en&gl=US) or use a Trusted APK file. There is very similar apps with very similar names. Whichever one works on your phone is fine.

# Güçlü Yedekleme Sistemi
Hiç birşey ebedi değildir. Birgün telefonunuz arızalandığında, herşeyi tek tek tekrar kurmanız başınızı çok ağrıtacaktır. Eşeği sağlam yere bağlamak için düzgün bir yedekleme sistemi kurmak şart. 2 kolay adımda çok güzel bir yedekleme sistemi kurabilirsiniz.

Adım 1: [Backup Scheduler](https://plugins.octoprint.org/plugins/backupscheduler/) isimli Octoprint eklentisini kurun. Bu eklenti otomatik olarak yedeklerinizi alacaktır. Ama bu yedekler yeterli değil. Çünkü bu yedeklerinizi ikinci bir yerde bulundurmazsanız, aletiniz bozulunca bu yedekler de bozulcaktır.

Adım 2: [Folder Sync](https://play.google.com/store/apps/details?id=dk.tacit.android.foldersync.lite&hl=en&gl=US) isimli uygulamayı kuruyoruz. Bu uygulamayı kullanarak bir çok bulut depolama sistemine bağlanabilirsiniz. İstediğiniz depolama sistemini seçip bir Dosya Grubu (Folder Pair) oluşturabilirsiniz.
Kullandığım Ayarlar Şöyle:
* Sync type: to Remote Folder.
* Local Folder: `/storage/emulated/0/Android/data/com.octo4a/files/.octoprint/data/backup` Bu dosya başka sizin telefonunuz için bir yerde olabilir. `Android` dosyasını bulduktan sonrası genellikle aynıdır.
* Scheduled sync ayarı açık.
* Schedule ayarını her 12 saat yapmanız tavsiye ediyorum. Genelde 24 saat yeterli ama ben biraz daha temkinli olmayı seviyorum.
* Bildirimler kapalı.
* Geri kalan bütün ayarlar kutudan çıktığı gibi.

# Geri Bildirim!
Okuduğunuz için teşekkür ederim. Yorumlarınızı veya düzeltmelerinizi blog@thrideas.com adresinden yollayabilirsiniz.