# AyKasaba Towny Setup - Ücretsiz Açık Kaynak

Bu proje, ücretli/özel bir ürünün birebir kopyası değildir. Aynı kategori için sıfırdan hazırlanmış, üretime hazır ve tamamen Türkçe **Towny Survival sunucu paketi + özel plugin** projesidir.

## İçerik
- Towny ekonomi ve kasaba dengesi
- Rank/permission yapısı
- Ana menü, warps, market ve bilgi menüleri
- Crate/ödül sistemi
- Görev zincirleri
- TAB/scoreboard görünümü
- Spawn ve dünya koruma ayarları
- Kurulum ve operasyon dokümanları
- Açık kaynak `MoonTownyCore` Paper plugin kodu
- GitHub Actions build akışı
- Türkçe resourcepack dil/model şablonu

## Hedef Sürüm
- Paper/Purpur 1.20.4+ veya 1.21.x
- Java 21 önerilir

## Kurulum
1. `server/plugins` içindeki klasörleri kendi sunucundaki `plugins` dizinine kopyala.
2. Gerekli plugin `.jar` dosyalarını resmi kaynaklarından indir.
3. `templates/server.properties` dosyasını sunucu köküne taşı.
4. Sunucuyu başlat, kapat, configleri tekrar kontrol et.
5. LuckPerms için `docs/luckperms-commands.md` komutlarını konsolda çalıştır.

## Plugin Listesi
Detay: `docs/plugins.md`

## Özel Plugin
`custom-plugin/` içinde Paper 1.21 için yazılmış `MoonTownyCore` bulunur. Menü, seviye XP ve Türkçe mesaj çekirdeği sağlar.

Derleme:
```bash
mvn -f custom-plugin/pom.xml package
```

## Not
Ücretli ürün dosyaları, assetleri veya birebir metinleri kopyalanmadı. Plugin `.jar` dosyaları lisans sebebiyle eklenmedi; kendi yazdığımız plugin kaynak koduyla verildi.
