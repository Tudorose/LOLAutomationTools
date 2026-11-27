<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | **Bahasa Indonesia** | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Ini adalah terjemahan komunitas (Bahasa Indonesia) dari [README berbahasa Tionghoa Sederhana](./README.md). PR koreksi sangat diterima.

# Pendahuluan
**LOLAutomationTools** adalah alat perluasan fungsi untuk **"League of Legends"**; ini digunakan untuk membantu pemain melakukan beberapa operasi klien sederhana untuk menghemat sedikit waktu dalam beberapa adegan di mana mereka tidak dapat melepaskan tangannya atau harus pergi sementara; perangkat lunak tidak akan terlalu mengganggu pemahaman pemain dan gameplay game, sehingga beberapa fungsi masih perlu dikonfigurasi secara manual (seperti konfigurasi hero rune). Terlalu banyak menahan diri akan membuat orang mati rasa dan kehilangan kesenangan dari permainan itu sendiri; bermain secara aktif dan gembira untuk membangun lingkungan yang harmonis.

# Fitur
- Pilih otomatis
  - Pilih awal
- Ban otomatis
  - Abaikan pemilihan tim
  - Mode grup dinonaktifkan
- Pilih acak
- Anti-kabur saat pick/ban
- Terima otomatis
  - Keterlambatan dalam menerima permainan
- Buat lobi
- Cari pertandingan
  - Deteksi batas waktu pertandingan
- Tukar
  - Tukar pahlawan dalam mode acak
    - Atau sekedar pasif menerima pemain lain bertukar hero
    - Tolak pertukaran pahlawan yang tidak dipilih
  - Pilihan pertukaran mode pertanda
    - Atau secara pasif menerima pilihan pertukaran posisi pemain lain
    - Tolak pertukaran bit yang tidak dipilih sebelumnya
  - Lantai pertukaran mode perekrutan
    - Atau hanya secara pasif menerima pemain lain berpindah lantai
    - Tolak pertukaran lantai yang tidak dikonfigurasi
- Lewati halaman penghormatan
- Lewati halaman buka kunci
- Balasan otomatis chat
  - Membalas pesan teman saat pergi
  - Tanggapi undangan permainan saat pergi
    - Tolak undangan permainan saat keluar
- Jendela tambahan
  - Tampilan BUFF keseimbangan pahlawan mode hiburan
  - Menerapkan rune secara otomatis
  - Koreksi kesalahan rune
  - Konfigurasi independen pahlawan
- Tutup game otomatis
- Sambung ulang otomatis
- Secara otomatis menerima hadiah pass (termasuk Teamfight Tactics)
- Pemrosesan permintaan pertemanan
  - Hapus teman secara berkelompok
- karir yang dipersonalisasi
  - Latar belakang karir
  - Avatar pemanggil
  - status klien
  - tanda tangan status
  - pecahan nama
  - Poin pencapaian pahlawan
  - Jelas memakai medali
- Pemblokiran tombol fungsi
- Rekam kueri
  - Kirim hasilnya
  - Deteksi peretasan dalam game
  - Pemain menonton pertandingan
  - Laporan pemain setelah pertandingan
- Telepon di kantor
- daftar hitam
- Pengaturan tombol pintas
- Pengaturan tema
  - Tema gelap/terang
  - Tema adaptif
  - Tema khusus
  - Pengaturan gambar latar belakang
  - Kustomisasi font
- Fungsi yang diperluas
  - Pemilihan kartu otomatis (Master Kartu)

## Pilih otomatis
Sebelum menggunakan **Pilih Pahlawan** dan **Nonaktifkan Pahlawan**, Anda perlu melakukan operasi pengeditan pada halaman konfigurasi (tombol di belakang item sakelar).

Item pahlawan yang ditambahkan dalam pengaturan cabang hanya berlaku di beberapa mode permainan dengan *posisi yang telah dipilih sebelumnya* (seperti *Memenuhi Syarat* dan *Serangan Ekstrim*), acak hanya berlaku dalam mode *Pahlawan Acak* (seperti *Arcs*, *Infinite Brawl*, halaman konfigurasi acak tidak termasuk dalam konfigurasi pahlawan yang dinonaktifkan), dan umumnya valid di semua mode lainnya (tidak termasuk mode yang disebutkan sebelumnya, ini demi spesifikasi penggunaan). Saat melakukan pemilihan hero otomatis, hero akan dipilih sesuai dengan **Pilih Pahlawan** Item konfigurasi dipilih dari atas ke bawah.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pilih awal
Logika eksekusi fungsi ini pada dasarnya sama dengan **Pilih Pahlawan**. Perbedaannya adalah **Pahlawan yang Dipilih Sebelumnya** hanya akan berlaku dalam mode dengan tahapan yang dinonaktifkan, seperti *Memenuhi Syarat* dan beberapa mode hiburan yang memerlukan pahlawan yang dinonaktifkan.

## Ban otomatis
Halaman konfigurasi **Disable Hero** pada dasarnya sama dengan halaman konfigurasi **Select Hero**. Hanya terdapat tombol untuk berpindah mode di pojok kanan atas. Klik tombol untuk beralih ke mode nonaktif.

*Mode larangan normal*: Logika pengoperasian mode ini konsisten dengan halaman konfigurasi **Pilih Pahlawan**. Saat menjalankan larangan otomatis terhadap pahlawan, jika tidak ada pahlawan yang dinonaktifkan yang dikonfigurasi, pemain akan dilarang dalam 0 detik dari sisa waktu fase Larangan.

*Mode Nonaktifkan Grup*: Item dalam daftar konfigurasi akan digantikan oleh pahlawan yang sesuai dalam konfigurasi **Pilih Pahlawan**. Saat memilih item, klik dua kali item pahlawan di sebelah kiri untuk menambahkannya ke **Nonaktifkan Grup** pahlawan. Saat menonaktifkan pahlawan secara otomatis, urutan item konfigurasi **Pilih Pahlawan** akan diikuti. Jika tidak ada pahlawan yang akan dinonaktifkan di **Nonaktifkan Grup** dari semua konfigurasi **Pilih Pahlawan**, pahlawan tersebut akan dinonaktifkan sesuai dengan logika mode pelarangan normal.

>Jika *Abaikan Pemilihan Rekan Tim* diaktifkan, deteksi pemilihan awal tim akan dilewati saat melakukan larangan pahlawan otomatis. Tidak disarankan untuk mengaktifkan opsi ini.

## Terima otomatis
Secara otomatis menerima kecocokan setelah dicocokkan.

>Ketika opsi *Tunda Penerimaan Kecocokan* diaktifkan, **Terima Kecocokan** hanya akan secara otomatis menerima kecocokan ketika detik terakhir hitungan mundur penerimaan tersisa.

## Buat lobi
Anda dapat membuat kecocokan secara manual melalui tombol **Buat Kecocokan** atau aktifkan tombol ini untuk membuat kecocokan secara otomatis.

>*Membuat game secara otomatis* Anda harus memilih mode permainan yang ingin Anda buat di *Pengaturan Lainnya*, opsi ini tidak akan disimpan ke konfigurasi.

## Cari pertandingan
Secara otomatis mencari kecocokan. Ini hanya akan berlaku ketika Anda berada di ruang mode pertandingan dan Anda adalah pemilik tim (tuan rumah).

>Jika opsi *Deteksi Batas Waktu* diaktifkan, kecocokan akan secara otomatis dicari ulang di antrian kecocokan jika perkiraan antrian melebihi interval yang ditentukan.

## lewati pujian
Lewati halaman pujian rekan satu tim di akhir permainan.

## Lewati akhir permainan
Lewati menunggu penyelesaian di akhir permainan (layar hitam memuat lingkaran) atau halaman penyelesaian pasca pertandingan, dan kembali ke ruang mode permainan.

## Tukar
Berisi item sakelar utama dan tiga item sakelar independen, Anda juga perlu membuat pengaturan lainnya. Dalam pengaturan lainnya **Fungsi Pertukaran**, atur apakah akan bertukar pahlawan dengan rekan satu tim dalam mode pahlawan acak atau bertukar lantai (urutan pahlawan yang dipilih) dan slot yang telah dipilih sebelumnya dengan rekan satu tim dalam mode perekrutan.

*Pengaturan pertukaran hero dan pertukaran posisi relatif sederhana, jadi saya tidak akan membahas detailnya di sini. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

Di **Pengaturan Lainnya** di **Lantai Pertukaran**, Anda dapat mengatur urutan pertukaran (yaitu lantai) dan mode pertukaran.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Mode Pertukaran*:
- Hanya pesanan target: Menerima permintaan dari rekan satu tim sesuai dengan *pesanan* yang ditentukan.
- Berisi prioritas target: Menerima permintaan dari rekan satu tim ≤ *pesanan* yang ditentukan.
- Penundaan pesanan dengan target: Menerima permintaan dari rekan satu tim ≥ *pesanan* yang ditentukan.
- Cakupan berdasarkan pesanan target: Menerima permintaan dari rekan tim dengan *pesanan* ≤ (*urutan tertentu* - *cakupan*) dan *pesanan* ≥ (*urutan tertentu* + *cakupan*).

Selain itu, ada dua opsi penukaran penolakan di **Pengaturan Lainnya**. Jika keduanya diaktifkan,** jika ada rekan satu tim yang meminta untuk menukar hero dengan Anda atau memilih posisi yang tidak sesuai dengan ketentuan yang ditentukan, permintaan penukaran tersebut akan otomatis ditolak. **Jika tidak** tidak ada tindakan yang akan diambil. Anda dapat memutuskan apakah akan menerima pertukaran tersebut.

## Anti-kabur saat pick/ban
Jika ini diaktifkan, **Pilih Pahlawan** atau **Nonaktifkan Pahlawan** akan dijalankan pada detik terakhir fase BP.

>Anda dapat mengubah pengaturan mode fungsi **Larangan Pahlawan Terpilih Anti-Kembali** di *Halaman Pengaturan Fungsi*.

## Balasan saat pergi
Item sakelar ini adalah sakelar utama, dan Anda perlu membuat pengaturan lainnya. Di halaman konfigurasi **Lainnya**, atur apakah akan membalas pesan teman atau undangan permainan secara otomatis saat keluar (ini diaktifkan secara default), dan atur konten teks balasan.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Jendela tambahan
Jika diaktifkan, **jendela tambahan** akan ditampilkan selama beberapa fase klien. Selain itu, Anda dapat mengklik tombol di belakang sakelar ini untuk masuk ke **Halaman Konfigurasi** dari **Jendela Tambahan**, di mana Anda juga dapat melihat **Atribut Saldo** (jika ada) pahlawan dalam mode hiburan yang tersedia saat ini, dan mengonfigurasi konfigurasi rune dan konfigurasi independen klien yang tersedia di setiap mode.

**Jendela tambahan** Halaman konfigurasi</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Jika Anda ingin menambah atau memperbarui konfigurasi rune pahlawan di **Halaman Konfigurasi Rune**, Anda perlu memilih halaman rune di **Koleksi - Rune** di klien game, edit dan simpan, ubah keterampilan pemanggil dari sudut kanan atas dan tekan tombol **Tambahkan Konfigurasi** atau tombol *Perbarui konfigurasi game saat ini ke konfigurasi ini* di **Item Konfigurasi Rune** untuk diperbarui guna menambah atau memperbarui konfigurasi rune.

**Jendela tambahan**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Tutup game otomatis
Sederhana dan lugas, proses permainan ditutup secara otomatis ketika animasi akhir kristal diputar di akhir permainan.

## Sambung ulang otomatis
Coba sambungkan kembali saat game perlu tersambung kembali.

## Kartu otomatis (ekstensi)
Jika pahlawan yang ada dalam permainan saat ini adalah master kartu, gunakan tombol Z/X/C untuk memilih kartu biru/merah/kuning secara otomatis.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Fungsi ini diimplementasikan menggunakan pemrosesan grafis dan simulasi keyboard. Ini hanya menguji dua resolusi yang umum digunakan (1920x1080/2560x1440). Resolusi lain tidak dapat digunakan secara normal tanpa konfigurasi mandiri (terutama resolusi selain rasio skala 16:9). Deteksi mengizinkan rentang filter tertentu, namun disarankan untuk tidak mengaktifkan filter saat menggunakan fungsi ini untuk menghindari pembatalan deteksi tertentu.

---

# Ekstensi (pihak ketiga)

>Konten yang dijelaskan di bagian ini dikelola oleh Tudorose, bukan penulis tuan rumah. Host `LOLAutomationTools` dan konfigurasi aslinya (`Config/`) dimiliki oleh © Lianxin, dan repositori ini tidak melakukan modifikasi apa pun terhadapnya.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Modul

|modul|Penjelasan satu kalimat|Detail|
|---|---|---|
| **VoiceModule** |Tekan dan tahan tombol pintas untuk berbicara, dan teks akan dikirim ke obrolan game setelah pengenalan lokal.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Cangkokkan jendela data OP.GG Seraphine ke halaman "Fungsi yang Diperluas".| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Mulai cepat

### 1. Siapkan tuan rumah
Unduh `LOLAutomationTools` (≥ 2.9.801) dari [halaman rilis upstream] (https://github.com/Seraph1ne/LOLAutomationTools/releases) dan ekstrak ke direktori mana pun, yang akan dicatat sebagai `<宿主目录>` di bawah.
Repositori ini **tidak mendistribusikan** program host.

### 2. Unduh model pidato
VoiceModule memerlukan model ASR dalam format sherpa-onnx (sekitar 254 MB). Repositori ini **tidak mendistribusikan** model. Untuk alamat pengunduhan dan tata letak direktori, lihat [voice-module/README.md → Unduhan Model](voice-module/README.md#模型下载).

### 3. Instalasi sekali klik
Jalankan (PowerShell) di direktori root gudang ini:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Pilihan:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Skrip akan secara otomatis: Unduh Rilis `VoiceModule-latest.zip` → Hentikan host → Salin dll/pdb → Tulis `exe.config` (ada tanpa ditimpa) → Tempatkan konfigurasi default ke `Extend/` (sudah ada tanpa ditimpa) → Salin modelnya.

### 4. Aktifkan
Luncurkan `LOLAutomationTools.exe` → **Fungsi yang Diperluas** di sebelah kiri → **Pengelompokan Suara** → Hidupkan sakelar **Suara ke Teks**. Tekan dan tahan `空格` untuk berbicara, lepaskan untuk mengirim ke obrolan tim.

## Unduh

|dokumen|menjelaskan|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Modul terkompilasi + konfigurasi default (~275 KB)|

## Lisensi

|isi|lisensi|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Babak pertama (menyelenggarakan konten asli)|© Lian Xin, dimiliki oleh Hulu|
|`LOLAutomationTools.exe` dan perpustakaan yang menyertainya|© Lian Xin, **tidak didistribusikan di repositori ini**|
|Seraphine (ketergantungan peluncur OP.GG)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **tidak didistribusikan di repositori ini**|
|waktu proses sherpa-onnx/model ASR|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **tidak didistribusikan di repositori ini**|

## Ucapan terima kasih
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Program tuan rumah
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— Sumber jendela OP.GG
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Pengenalan ucapan offline

