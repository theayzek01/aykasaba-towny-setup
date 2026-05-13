# Proje Durumu

## Tamamlananlar
- Paper 1.21.1 runtime hazırlama scripti
- Portable Java 21 + Maven kurulum otomasyonu
- MoonTownyCore özel plugin
- Türkçe GUI komutları
- RTP, kasa, görev, market, seviye/XP çekirdeği
- Resourcepack zip üretimi
- GitHub Actions Maven build
- MIT lisans
- GitHub yayın dokümanı
- Towny, Jobs, Quests, Crates, TAB, WorldGuard vb. config şablonları

## Bilerek Eklenmeyenler
- Ücretli/premium plugin jarları
- Ücretli setup assetleri
- Başka ürünlerden kopyalanmış texture/build/config

## Yayına Hazır Paket
Repo içinde kaynak kod ve configler tutulur. Büyük runtime dosyaları `.gitignore` içindedir.

Runtime üretmek için:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup-windows.ps1
```
