<p align="center">
  <img src="assets/banner.svg" alt="AyKasaba Towny Setup" width="100%" />
</p>

<p align="center">
  <img alt="Paper" src="https://img.shields.io/badge/Paper-1.21.1-22c55e?style=for-the-badge" />
  <img alt="Java" src="https://img.shields.io/badge/Java-21-f97316?style=for-the-badge" />
  <img alt="License" src="https://img.shields.io/badge/License-MIT-8b5cf6?style=for-the-badge" />
  <img alt="Language" src="https://img.shields.io/badge/Dil-Türkçe-ef4444?style=for-the-badge" />
</p>

<h1 align="center">AyKasaba Towny Setup</h1>

<p align="center">
  Ücretsiz, açık kaynak, tamamen Türkçe Minecraft Towny survival setup + özel Paper plugin.
</p>

---

## ✨ Özellikler

- 🇹🇷 Tam Türkçe menüler, mesajlar ve dokümantasyon
- 🏘️ Towny survival config paketi
- 🧭 `/rtp` güvenli rastgele ışınlanma
- 🎁 `/kasalar` ücretsiz kasa sistemi
- 📘 `/gorevler` görev sistemi
- 🛒 `/market` başlangıç marketi
- ⭐ `/seviye` kalıcı XP/seviye sistemi
- 🎨 Türkçe resourcepack şablonu
- ⚙️ Windows otomatik kurulum scripti
- 🚀 GitHub Actions ile plugin build

---

## 📦 Proje Yapısı

```txt
custom-plugin/      MoonTownyCore Paper plugin kaynak kodu
server/plugins/     Plugin config şablonları
resourcepack/       Türkçe resourcepack dosyaları
docs/               Kurulum, operasyon ve özellik dokümanları
scripts/            Otomatik kurulum scriptleri
addons/             RPG, dungeon ve Geyser addon şablonları
```

---

## 🚀 Hızlı Kurulum

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup-windows.ps1
```

Bu script otomatik olarak:

- Portable Java 21 indirir
- Portable Maven indirir
- `MoonTownyCore.jar` build eder
- Paper 1.21.1 indirir
- `runtime-server/` klasörünü hazırlar
- `resourcepack.zip` üretir

Sunucuyu başlat:

```bat
runtime-server/start.bat
```

---

## 🧩 MoonTownyCore Komutları

| Komut | Açıklama |
|---|---|
| `/menu` | Ana Türkçe GUI |
| `/rtp` | Güvenli rastgele ışınlanma |
| `/kasalar` | Oy/kraliyet/sezon kasaları |
| `/gorevler` | Görev menüsü |
| `/market` | Basit market |
| `/seviye` | XP ve seviye görüntüleme |
| `/moonadmin xp <miktar>` | Admin XP ekleme |
| `/moonadmin key <vote\|royal\|seasonal> <miktar>` | Admin anahtar ekleme |

Detay: [`docs/moon-towny-core.md`](docs/moon-towny-core.md)

---

## 🧱 Config İçerikleri

- Towny
- Jobs
- Quests
- EconomyShopGUI
- ExcellentCrates
- DeluxeMenus
- TAB
- BetterRTP
- VotingPlugin
- WorldGuard
- CoreProtect
- MythicMobs
- PlayerWarps
- Geyser addon şablonu

> Ücretli plugin jarları veya başka ürünlerden kopyalanmış assetler repoya eklenmez.

---

## 🗺️ Roadmap

- [x] Türkçe setup temeli
- [x] Özel Paper plugin
- [x] RTP / kasa / görev / market / seviye
- [x] Otomatik Windows kurulum
- [x] GitHub Actions build
- [ ] SQLite veri katmanı
- [ ] Jobs sistemini tamamen plugin içine alma
- [ ] Auction house alternatifi
- [ ] Player warps alternatifi
- [ ] Dungeon boss sistemi
- [ ] Sezon battlepass sistemi

---

## 📚 Dokümanlar

- [`docs/status.md`](docs/status.md)
- [`docs/plugins.md`](docs/plugins.md)
- [`docs/resourcepack.md`](docs/resourcepack.md)
- [`docs/operation.md`](docs/operation.md)
- [`docs/github-release.md`](docs/github-release.md)
- [`docs/roadmap-better-than-premium.md`](docs/roadmap-better-than-premium.md)

---

## ⚖️ Lisans ve Etik

Bu proje MIT lisanslıdır. Ücretli setup dosyaları, premium plugin jarları, crack/bypass veya kopyalanmış texture/build içermez.

Amaç: Türk oyuncular için temiz, geliştirilebilir ve ücretsiz bir Towny survival altyapısı sunmak.

---

<p align="center">
  <b>AyKasaba</b> — Türkçe, özgür ve geliştirilebilir Towny deneyimi.
</p>
