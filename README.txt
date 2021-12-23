#Jenkins sunucusundaki bir jobu uzaktan çalıştırabilmeniz için javanın yüklü olması gerekiyor.
#Sunucuya erişebilmeniz için vpn gerekebilir.
#Ayrıca sunucu bilgileri için settings.ini dosyasını gözden geçirmeyi unutmayın.

 Update-All-Pods.bat isimli dosya ile birlikte jenkins sunucusundaki bütün joblar sırasıyla çalıştırılır, 
Bu sırada job başarı ile işini bitirdikten sonra ilgili servisin sunucu tarafından güncellenmesi gerçekleştirilir.
Bunu bütün servisler için tekrarlar.

Eğer tek bir servisi güncellemek isterseniz, Execute klasörünün içerisinden ilgili bat dosyasını çalıştırabilirsiniz.

 ~@ByAnıl~