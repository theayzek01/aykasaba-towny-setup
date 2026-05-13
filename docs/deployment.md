# Deployment

## Windows Tek Komut

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup-windows.ps1
```

## Release Zip

```powershell
powershell -ExecutionPolicy Bypass -File scripts/package-release.ps1
```

Çıktı:

`dist/aykasaba-towny-setup.zip`

## Docker Compose

Önce runtime oluştur:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup-windows.ps1
```

Sonra:

```bash
docker compose up -d
```

## Pterodactyl

1. Java 21 destekli Paper egg seç.
2. `runtime-server/` içeriğini sunucu dosyalarına yükle.
3. Startup jar adını `paper.jar` yap.
4. RAM: minimum 4 GB önerilir.
5. `plugins/MoonTownyCore.jar` dosyasının bulunduğunu kontrol et.
