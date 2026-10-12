<p align="center">
  <img src="pack.png" alt="No Background Dark logo" width="128">
</p>

<h1 align="center">No Background Dark</h1>

<p align="center">
  Resource pack Minecraft untuk menghapus blur dan lapisan gelap pada GUI.
</p>

<p align="center">
  <a href="https://github.com/fadhlanel/no-background-dark/releases"><img src="https://img.shields.io/github/v/release/fadhlanel/no-background-dark?display_name=tag&label=release&color=orange" alt="Rilis terbaru"></a>
  <a href="https://github.com/fadhlanel/no-background-dark/releases"><img src="https://img.shields.io/github/downloads/fadhlanel/no-background-dark/total?label=downloads&color=brightgreen" alt="Total unduhan"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-Free%20to%20use-blue" alt="Lisensi"></a>
</p>

---

## Tentang

**No Background Dark** membuat antarmuka Minecraft lebih bersih tanpa menghalangi pandangan dunia. Resource pack ini menghapus blur, tint gelap menu, dan vignette sambil menjaga GUI tetap transparan.

| Dihapus | Hasil |
| --- | --- |
| Blur latar GUI | Dunia tetap terlihat saat membuka menu |
| Lapisan gelap pada menu | Tampilan lebih terang dan bersih |
| Efek vignette | Sudut layar tidak lagi digelapkan |

- Client-side. Tidak perlu dipasang di server.
- Tanpa dampak performa tambahan.
- Mendukung elemen GUI transparan.

## Instalasi

1. Unduh file `.zip` dari [rilis terbaru](https://github.com/fadhlanel/no-background-dark/releases/latest).
2. Pindahkan file ke folder `.minecraft/resourcepacks/`.
3. Buka **Options** → **Resource Packs** di Minecraft.
4. Aktifkan **No Background Dark**, lalu klik **Done**.

> Jangan ekstrak file `.zip` hasil unduhan.

## Kompatibilitas

| Minecraft | Status | Resource pack format |
| --- | --- | --- |
| 1.21.11+ | ✅ Didukung | 70+ |
| 1.21.6–1.21.10 | ✅ Didukung | 56–69 |
| 1.20.5+ | ✅ Kompatibel | 15+ |

Bekerja dengan **Sodium**, **Iris**, dan sebagian besar mod optimasi.

## Cara Kerja

<details>
<summary>Lihat detail teknis</summary>

Resource pack memodifikasi shader GUI Minecraft untuk:

- Mengatur alpha menjadi `0.0` pada latar gelap.
- Mengganti post-processing blur dengan blit langsung.
- Menggunakan tekstur vignette transparan.

File utama yang diubah:

- `assets/minecraft/shaders/core/gui.vsh`
- `assets/minecraft/shaders/core/rendertype_gui_overlay.vsh`
- `assets/minecraft/shaders/post/transparency.json`
- `assets/minecraft/textures/misc/vignette.png`

</details>

## Build dari Source

```bash
git clone https://github.com/fadhlanel/no-background-dark.git
cd no-background-dark
zip -r NoBackgroundDark.zip assets/ 1.21.11/ 1.21.6-1.21.10/ pack.mcmeta pack.png
```

## Rilis

GitHub Release dibuat otomatis saat push tag berformat `v*`.

```bash
git tag v1.0.0
git push origin v1.0.0
```

Release akan berisi `NoBackgroundDark-v1.0.0.zip` dan catatan rilis otomatis dari GitHub.

## Lisensi

Bebas digunakan dan dimodifikasi. Kredit diapresiasi, tidak wajib.

<p align="center">
  Dibuat oleh <strong>nuel</strong> untuk pemain yang menyukai GUI bersih.
</p>
