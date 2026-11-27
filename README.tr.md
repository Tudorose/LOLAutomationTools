<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | **Türkçe** | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Bu, [Basitleştirilmiş Çince README](./README.md) dosyasının topluluk çevirisidir (Türkçe). Düzeltme PR'ları memnuniyetle karşılanır.

# Giriş
**LOLAutomationTools** **"League of Legends"** için bir işlev genişletme aracıdır; oyuncuların ellerini serbest bırakamadıkları veya geçici olarak ayrılmaları gereken bazı sahnelerde az miktarda zaman kazanmak için bazı basit istemci işlemlerini gerçekleştirmelerine yardımcı olmak için kullanılır; yazılım, oyuncunun oyunu anlamasını ve oynanışını çok fazla etkilemeyeceğinden, bazı işlevlerin yine de manuel olarak yapılandırılması gerekir (kahraman runesi yapılandırması gibi). Çok fazla kısıtlama insanları uyuşturacak ve oyunun eğlencesini kaybedecektir; Uyumlu bir ortam oluşturmak için aktif ve mutlu bir şekilde oynayın.

# Özellikler
- Otomatik seçme
  - Ön seçim
- Otomatik yasaklama
  - Takım seçimini yoksay
  - Grup devre dışı modu
- Rastgele seçme
- Pick/ban kaçış önleme
- Otomatik kabul
  - Oyunların kabul edilmesinde gecikme
- Lobi oluştur
- Maç bul
  - Maç zaman aşımı tespiti
- Takas
  - Kahramanları rastgele modda değiştirin
    - Veya pasif olarak diğer oyuncuların kahramanlarını değiştirmesini kabul edin
    - Seçilmeyen kahraman takaslarını reddet
  - Omen modu değiştirme seçimi
    - Veya diğer oyuncuların konum değiştirme seçimlerini pasif olarak alın
    - Önceden seçilmemiş bit takaslarını reddet
  - İşe alma modu takas katları
    - Veya diğer oyuncuların kat değiştirmesini pasif bir şekilde kabul edin
    - Yapılandırılmamış kat değişimlerini reddet
- Onur sayfasını atla
- Kilit açma sayfasını atla
- Sohbet otomatik yanıt
  - Uzaktayken bir arkadaşınızın mesajını yanıtlayın
  - Uzaktayken oyun davetlerine yanıt verin
    - Ayrılırken oyun davetini reddet
- Yardımcı pencere
  - Eğlence modu kahraman dengesi BUFF ekranı
  - Rünleri otomatik olarak uygula
  - Rune hatası düzeltme
  - Kahramandan bağımsız konfigürasyon
- Oyunu otomatik kapat
- Otomatik yeniden bağlan
- Geçiş ödüllerini otomatik olarak alın (Teamfight Tactics dahil)
- Arkadaşlık isteği işleme
  - Arkadaşlarınızı toplu olarak silin
- kişiselleştirilmiş kariyer
  - Kariyer geçmişi
  - Sihirdar avatarı
  - müşteri durumu
  - durum imzası
  - isim parçası
  - Kahraman başarı puanları
  - Temiz giyen madalyalar
- Fonksiyon tuşu engelleme
- Sorguyu kaydet
  - Sonuçları gönder
  - Oyun içi hacklemenin tespiti
  - Maçı izleyen oyuncular
  - Maçtan sonra oyuncu raporları
- Ofisi arayın
- kara liste
- Kısayol tuşu ayarları
- Tema ayarları
  - Koyu/açık tema
  - Uyarlanabilir tema
  - Özel tema
  - Arka plan resmi ayarları
  - Yazı tipi özelleştirme
- Genişletilmiş işlevler
  - Otomatik kart seçimi (Card Master)

## Otomatik seçme
**Kahramanı Seç** ve **Kahramanı Devre Dışı Bırak**'ı kullanmadan önce, yapılandırma sayfasında (anahtar öğesinin arkasındaki düğme) düzenleme işlemlerini yapmanız gerekir.

Dal ayarlarına eklenen kahraman öğeleri yalnızca *önceden seçilmiş konumlara* sahip bazı oyun modlarında etkili olur (*Nitelikli* ve *Extreme Blitz* gibi), rastgele yalnızca *Random Hero* modlarında etkili olur (*Arcs*, *Infinite Brawl* gibi, rastgele yapılandırma sayfası devre dışı bırakılan kahraman yapılandırmasına dahil değildir) ve genel olarak diğer tüm modlarda geçerlidir (daha önce listelenen modlar hariç, bu kullanım özellikleri açısındandır). Otomatik kahraman seçimi yapılırken, kahraman **Kahramanları Seç** Yapılandırma öğelerinin yukarıdan aşağıya doğru seçilmesine göre seçilecektir.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Ön seçim
Bu işlevin yürütme mantığı temelde **Kahramanları Seç** ile aynıdır. Aradaki fark, **Önceden Seçilmiş Kahramanların** yalnızca *Nitelikli* gibi engelli aşamaları olan modlarda ve engelli kahramanlar gerektiren bazı eğlence modlarında geçerli olmasıdır.

## Otomatik yasaklama
**Kahramanı Devre Dışı Bırak** yapılandırma sayfası temel olarak **Kahramanı Seç** yapılandırma sayfasıyla aynıdır. Sadece sağ üst köşede modları değiştirmek için bir düğme var. Devre dışı moduna geçmek için düğmeye tıklayın.

*Normal yasaklama modu*: Bu modun çalışma mantığı **Select Heroes** yapılandırma sayfasıyla tutarlıdır. Kahramanların otomatik olarak yasaklanması sırasında, eğer yapılandırılmış engelli bir kahraman yoksa, oyuncu Yasaklama aşamasının kalan süresinin 0 saniyesinde yasaklanacaktır.

*Grup Devre Dışı Bırakma Modu*: Yapılandırma listesindeki öğeler, **Kahramanları Seç** yapılandırmasındaki ilgili kahramanlarla değiştirilecektir. Bir öğe seçerken, soldaki kahraman öğesini çift tıklayarak onu kahramanın **Grubu Devre Dışı Bırak**'a ekleyin. Kahramanı otomatik olarak devre dışı bırakırken **Kahraman Seç**'in yapılandırma öğelerinin sırası takip edilecektir. Tüm **Kahramanları Seç** yapılandırmalarının **Grubu Devre Dışı Bırak** bölümünde devre dışı bırakılacak kahraman yoksa, bunlar normal yasaklama modunun mantığına göre devre dışı bırakılır.

>*Takım Arkadaşı Ön Seçimini Yoksay* etkinleştirilirse, otomatik kahraman yasağı uygulanırken takım ön seçimi tespiti atlanır. Bu seçeneği etkinleştirmeniz önerilmez.

## Otomatik kabul
Eşleştirildikten sonra eşleşmeyi otomatik olarak kabul et.

>*Eşleşmeleri Kabul Etmeyi Geciktir* seçeneği etkinleştirildiğinde, **Eşleşmeleri Kabul Et** yalnızca kabul geri sayımının son saniyesi kaldığında eşleşmeyi otomatik olarak kabul eder.

## Lobi oluştur
**Eşleşme Oluştur** düğmesini kullanarak manuel olarak bir eşleşme oluşturabilir veya otomatik olarak bir eşleşme oluşturmak için bu anahtarı açabilirsiniz.

>*Otomatik olarak oyun oluştur* Oluşturmak istediğiniz oyun modunu *Diğer Ayarlar* bölümünde seçmeniz gerekir, bu seçenek yapılandırmaya kaydedilmeyecektir.

## Maç bul
Eşleşmeleri otomatik olarak arayın. Bu yalnızca maç modu odasında olduğunuzda ve takımın sahibi (ev sahibi) olduğunuzda geçerli olacaktır.

>*Zaman Aşımı Tespiti* seçeneği etkinleştirilirse, sıra tahmininin belirtilen aralığı aşması durumunda maçlar maç kuyruğunda otomatik olarak yeniden aranacaktır.

## iltifatları atla
Oyunun sonundaki takım arkadaşını övme sayfasını atlayın.

## Oyun sonunu atla
Oyunun sonunda (daireler halinde siyah ekranın yüklenmesi) veya maç sonrası hesaplaşma sayfasındaki hesaplaşma beklemeyi atlayın ve oyun modu odasına dönün.

## Takas
Ana anahtar öğesini ve üç bağımsız anahtar öğesini içerir; ayrıca başka ayarları da yapmanız gerekir. **Değişim İşlevi** daha fazla ayarda, rastgele kahraman modunda kahramanların takım arkadaşlarıyla mı yoksa katların (kahramanların seçildiği sıra) ve önceden seçilmiş slotların takım arkadaşlarıyla takas modunda mı değiştirileceğini ayarlayın.

*Kahramanları ve konumları değiştirme ayarı nispeten basittir, bu yüzden burada ayrıntılara girmeyeceğim. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

**Değişim Katları**'nın **Diğer Ayarlar** bölümünde, değişim sırasını (yani katlar) ve değişim modunu ayarlayabilirsiniz.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Değişim Modu*:
- Yalnızca hedef sipariş: Belirtilen *sıraya* uygun olarak takım arkadaşlarından gelen istekleri kabul edin.
- Hedef önceliğini içerir: Belirtilen *sıra*'dan büyük olan takım arkadaşlarından gelen istekleri kabul edin.
- Hedefli erteleme emri: Takım arkadaşlarından gelen istekleri kabul edin ≥ belirtilen *sipariş*.
- Hedef sıraya göre kapsam: *sıra* ≤ (*belirtilen sıra* - *kapsam*) ve *sıra* ≥ (*belirtilen sıra* + *kapsam*) olan takım arkadaşlarından gelen istekleri kabul eder.

Ayrıca **Diğer Ayarlar**'da iki reddetme değiştirme seçeneği vardır. Bu ikisi etkinleştirildiğinde** bir takım arkadaşınız sizinle kahraman takası talep ederse veya belirlenen koşullar dışında bir pozisyon seçerse takas talebi otomatik olarak reddedilecektir. **Aksi takdirde** herhangi bir işlem yapılmayacaktır. Değişimi kabul edip etmeyeceğinize karar verebilirsiniz.

## Pick/ban kaçış önleme
Bu etkinleştirildiğinde, **Kahraman Seç** veya **Kahramanı Devre Dışı Bırak** BP aşamasının son saniyesinde yürütülür.

>**Seçili Kahramanların Geri Dönüşünü Engelle** işlevinin mod ayarlarını *İşlev Ayarları Sayfasından* değiştirebilirsiniz.

## Uzak yanıtları
Bu anahtar öğesi ana anahtardır ve diğer ayarları yapmanız gerekir. **Diğer** yapılandırma sayfasında, ayrılırken arkadaş mesajlarının veya oyun davetlerinin otomatik olarak yanıtlanıp yanıtlanmayacağını ayarlayın (bunlar varsayılan olarak etkindir) ve yanıtın metin içeriğini ayarlayın.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Yardımcı pencere
Etkinleştirildiğinde, bazı istemci aşamalarında **ek bir pencere** görüntülenecektir. Ayrıca, **Ek Pencerenin** **Yapılandırma Sayfasına** girmek için bu anahtarın arkasındaki düğmeye tıklayabilirsiniz; burada mevcut eğlence modunda kahramanın **Denge Niteliklerini** (varsa) görüntüleyebilir ve her modda mevcut olan rune yapılandırmasını ve istemciden bağımsız yapılandırmayı yapılandırabilirsiniz.

**Ek pencere** Yapılandırma sayfası</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Kahramanın rune yapılandırmasını **Rune Yapılandırma Sayfasına** eklemek veya güncellemek istiyorsanız, oyun istemcisinde **Koleksiyonlar - Rünler**'de bir rune sayfası seçmeniz, bu sayfayı düzenleyip kaydetmeniz, sağ üst köşeden sihirdar becerilerini değiştirmeniz ve rune yapılandırmasını eklemek veya güncellemek için güncellenmek üzere **Yapılandırma Ekle** düğmesine veya **Rune Yapılandırma Öğesi**'ndeki *Mevcut oyun yapılandırmasını bu yapılandırmaya güncelle* düğmesine basmanız gerekir.

**Ek pencere**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Oyunu otomatik kapat
Basit ve anlaşılır olan oyun süreci, oyunun sonunda kristal bitiş animasyonu oynatıldığında otomatik olarak kapatılır.

## Otomatik yeniden bağlan
Oyunun yeniden bağlanması gerektiğinde yeniden bağlanmayı deneyin.

## Otomatik kart (uzantı)
Oyundaki kahraman bir kart ustası olduğunda, mavi/kırmızı/sarı kartları otomatik olarak seçmek için Z/X/C tuşlarını kullanın.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Bu işlev, grafik işleme ve klavye simülasyonu kullanılarak uygulanır. Yalnızca yaygın olarak kullanılan iki çözünürlüğü (1920x1080/2560x1440) test eder. Diğer çözünürlükler, kendi kendine yapılandırma olmadan normal şekilde kullanılamaz (özellikle 16:9 ölçeklendirme oranı dışındaki çözünürlükler). Algılama belirli bir filtre aralığına izin verir, ancak belirli bir algılamanın geçersiz kılınmasını önlemek için bu işlevi kullanırken filtrenin açılmaması önerilir.

---

# Uzantılar (üçüncü taraf)

>Bu bölümde açıklanan içerik, sunucunun yazarı değil, Tudorose tarafından korunur. `LOLAutomationTools` ana bilgisayarı ve orijinal yapılandırması (`Config/`) © Lianxin'e aittir ve bu depo bunlarda herhangi bir değişiklik yapmaz.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Modüller

|modül|Tek cümlelik açıklama|Detaylar|
|---|---|---|
| **VoiceModule** |Konuşmak için kısayol tuşunu basılı tutun; metin yerel olarak tanındıktan sonra oyun sohbetine gönderilecektir.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Seraphine'in OP.GG kayıt penceresini "Genişletilmiş İşlevler" sayfasına aşılayın| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Hızlı başlangıç

### 1. Ev sahibini hazırlayın
[yukarı akış sürüm sayfasından] (https://github.com/Seraph1ne/LOLAutomationTools/releases) `LOLAutomationTools` (≥ 2.9.801) dosyasını indirin ve aşağıda `<宿主目录>` olarak kaydedilecek olan herhangi bir dizine çıkarın.
Bu depo, ana bilgisayar programlarını **dağıtmaz**.

### 2. Konuşma modelini indirin
VoiceModule, sherpa-onnx formatında (yaklaşık 254 MB) bir ASR modeli gerektirir. Bu depo modeli **dağıtmaz**. İndirme adresi ve dizin düzeni için bkz. [voice-module/README.md → Model İndirme](voice-module/README.md#模型下载).

### 3. Tek tıkla kurulum
Bu deponun kök dizininde (PowerShell) komutunu çalıştırın:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Seçenekler:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Komut dosyası otomatik olarak: Sürümü İndir `VoiceModule-latest.zip` → Ana bilgisayarı durdur → Dll/pdb'yi kopyala → `exe.config` yaz (üzerine yazılmadan mevcut) → Varsayılan yapılandırmayı `Extend/`'ye yerleştir (zaten üzerine yazılmadan mevcut) → Modeli kopyala.

### 4. Etkinleştir
`LOLAutomationTools.exe` → Soldaki **Genişletilmiş İşlevler**'i başlatın → **Ses** Gruplandırma → **Sesten Metne** anahtarını açın. Konuşmak için `空格` tuşunu basılı tutun, ekip sohbetine göndermek için bırakın.

## İndir

|belge|göstermek|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Derlenmiş modül + varsayılan yapılandırma (~275 KB)|

## Lisans

|içerik|lisans|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` İlk yarı (orijinal içerik barındırın)|© Lianxin, Upstream'e aittir|
|`LOLAutomationTools.exe` ve beraberindeki kütüphaneler|© Lian Xin, **bu depoda dağıtılmamaktadır**|
|Seraphine (OP.GG başlatıcı bağımlılığı)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **bu depoda dağıtılmıyor**|
|sherpa-onnx çalışma zamanı/ASR modeli|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **bu depoda dağıtılmıyor**|

## Teşekkürler
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Ana bilgisayar programı
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— OP.GG pencere kaynağı
- [k2-fsa/sherpa-onnx](@0@@) —— Çevrimdışı konuşma tanıma

