<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | **Polski** | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

To tłumaczenie społeczności (polski) [README w uproszczonym chińskim](./README.md). PR-y z poprawkami są mile widziane.

# Wprowadzenie
**LOLAutomationTools** to narzędzie rozszerzające funkcje **„League of Legends”**; służy do pomocy graczom w wykonywaniu prostych operacji klienta, aby zaoszczędzić niewielką ilość czasu w niektórych scenach, w których nie mogą uwolnić rąk lub muszą chwilowo wyjść; oprogramowanie nie będzie zbytnio ingerować w zrozumienie i rozgrywkę gry przez gracza, więc niektóre funkcje nadal wymagają ręcznej konfiguracji (np. konfiguracja run bohatera). Zbyt duża powściągliwość sprawi, że ludzie odrętwieją i stracą radość z samej gry; baw się aktywnie i szczęśliwie, aby zbudować harmonijne środowisko.

# Funkcje
- Auto-wybieranie
  - Przedwybór
- Auto-banowanie
  - Ignoruj ​​wybór zespołu
  - Tryb grupowy wyłączony
- Losowy wybór
- Anty-dodge przy pick/ban
- Auto-akceptowanie
  - Opóźnienie w przyjmowaniu gier
- Utwórz pokój
- Szukaj gry
  - Wykrywanie przekroczenia limitu czasu meczu
- Wymiana
  - Zamień bohaterów w trybie losowym
    - Lub po prostu pasywnie akceptuj innych graczy wymieniających bohaterów
    - Odrzuć zamianę niewybranych bohaterów
  - Wybór zamiany trybu Omen
    - Lub pasywnie otrzymuj wybory wymiany pozycji innych graczy
    - Odrzuć niewybrane wcześniej zamiany bitów
  - Podłogi wymiany w trybie rekrutacji
    - Lub po prostu pasywnie zaakceptuj zmianę piętra przez innych graczy
    - Odrzuć nieskonfigurowane wymiany pięter
- Pomiń stronę pochwały
- Pomiń stronę odblokowania
- Auto-odpowiedź w czacie
  - Odpowiedz na wiadomość znajomego, gdy jesteś poza nim
  - Odpowiadaj na zaproszenia do gry, gdy jesteś poza domem
    - Odrzuć zaproszenie do gry przy wychodzeniu
- Okno dodatkowe
  - Wyświetlanie BUFF balansu bohatera w trybie rozrywki
  - Automatycznie nakładaj runy
  - Korekcja błędów run
  - Niezależna konfiguracja bohatera
- Auto-zamykanie gry
- Auto-ponowne łączenie
- Automatycznie otrzymuj nagrody za przepustkę (w tym Teamfight Tactics)
- Przetwarzanie prośby o dodanie do znajomych
  - Usuń znajomych partiami
- spersonalizowaną karierę
  - Tło kariery
  - Awatar przywoływacza
  - stan klienta
  - podpis stanu
  - fragment imienia
  - Punkty osiągnięć bohatera
  - Jasne noszenie medali
- Blokowanie klawiszy funkcyjnych
- Zapisz zapytanie
  - Wyślij wyniki
  - Wykrywanie hackowania w grze
  - Gracze oglądający mecz
  - Raporty zawodników po meczu
- Zadzwoń do biura
- czarna lista
- Ustawienia klawiszy skrótu
- Ustawienia motywu
  - Motyw ciemny/jasny
  - Motyw adaptacyjny
  - Motyw niestandardowy
  - Ustawienia obrazu tła
  - Dostosowywanie czcionki
- Rozszerzone funkcje
  - Automatyczny wybór karty (Card Master)

## Auto-wybieranie
Przed użyciem opcji **Wybierz bohatera** i **Wyłącz bohatera** należy wykonać operacje edycyjne na stronie konfiguracji (przycisk za pozycją przełączania).

Przedmioty bohaterów dodane w ustawieniach gałęzi działają tylko w niektórych trybach gry z *wstępnie wybranymi pozycjami* (takimi jak *Kwalifikowana* i *Ekstremalna Blitz*), losowe działają tylko w trybach *Losowego bohatera* (takich jak *Arki*, *Nieskończona Bójka*, strona losowej konfiguracji nie jest uwzględniona w konfiguracji wyłączonego bohatera) i ogólnie obowiązują we wszystkich pozostałych trybach (z wyjątkiem trybów wymienionych wcześniej, ma to na celu ze względu na specyfikację użytkowania). Podczas automatycznego wyboru bohatera, bohater zostanie wybrany zgodnie z **Wybierz bohaterów** Elementy konfiguracji są wybierane od góry do dołu.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Przedwybór
The execution logic of this function is basically the same as **Select Heroes**. Różnica polega na tym, że **Wstępnie wybrani bohaterowie** będą obowiązywać tylko w trybach z wyłączonymi etapami, takimi jak *Kwalifikowani* i w niektórych trybach rozrywki, które wymagają niepełnosprawnych bohaterów.

## Auto-banowanie
Strona konfiguracji **Wyłącz bohatera** jest w zasadzie taka sama jak strona konfiguracji **Wybierz bohatera**. Jedynie w prawym górnym rogu znajduje się przycisk do przełączania trybów. Kliknij przycisk, aby przejść do trybu wyłączonego.

*Tryb normalnego bana*: Logika działania tego trybu jest zgodna ze stroną konfiguracyjną **Wybierz bohaterów**. Podczas wykonywania automatycznego banowania bohaterów, jeśli nie skonfigurowano żadnego wyłączonego bohatera, gracz zostanie zbanowany w ciągu 0 sekund pozostałego czasu fazy banowania.

*Tryb wyłączenia grupy*: Pozycje na liście konfiguracji zostaną zastąpione odpowiednimi bohaterami w konfiguracji **Wybierz bohaterów**. Wybierając przedmiot, kliknij dwukrotnie przedmiot bohatera po lewej stronie, aby dodać go do **Grupy wyłączającej** bohatera. Podczas automatycznego wyłączania bohatera zachowana zostanie kolejność elementów konfiguracji **Wybierz bohaterów**. Jeśli w **Grupie Wyłączeń** wszystkich konfiguracji **Wybierz Bohaterów** nie ma bohaterów do wyłączenia, zostaną oni wyłączeni zgodnie z logiką normalnego trybu banowania.

>Jeśli włączona jest opcja *Ignoruj ​​​​preselekcję członków drużyny*, wykrywanie wstępnego wyboru drużyny zostanie pominięte podczas automatycznego banowania bohatera. Nie zaleca się włączania tej opcji.

## Auto-akceptowanie
Automatycznie zaakceptuj dopasowanie po dopasowaniu.

>Gdy włączona jest opcja *Opóźnij akceptowanie meczów*, opcja **Akceptuj mecze** automatycznie zaakceptuje dopasowanie tylko wtedy, gdy minie ostatnia sekunda odliczania akceptacji.

## Utwórz pokój
Możesz utworzyć dopasowanie ręcznie za pomocą przycisku **Utwórz dopasowanie** lub włączyć ten przełącznik, aby utworzyć dopasowanie automatycznie.

>*Automatycznie utwórz grę* Musisz wybrać tryb gry, który chcesz utworzyć w *Więcej ustawień*, ta opcja nie zostanie zapisana w konfiguracji.

## Szukaj gry
Automatyczne wyszukiwanie dopasowań. Będzie to miało wpływ tylko wtedy, gdy znajdziesz się w pokoju z trybem meczu i będziesz właścicielem drużyny (gospodarzem).

>Jeśli włączona jest opcja *Wykrywanie przekroczenia limitu czasu*, dopasowania będą automatycznie ponownie przeszukiwane w kolejce dopasowań, jeśli szacunkowa kolejka przekroczy określony interwał.

## pominąć komplementy
Pomiń stronę z pochwałami członków drużyny na koniec gry.

## Pomiń koniec gry
Pomiń oczekiwanie na rozliczenie na koniec gry (wczytywanie czarnego ekranu w kółkach) lub stronę rozliczenia po meczu i wróć do pokoju trybu gry.

## Wymiana
Zawiera główny element przełącznika i trzy niezależne elementy przełącznika, należy także dokonać innych ustawień. W dodatkowych ustawieniach **Funkcji wymiany** określ, czy chcesz wymieniać bohaterów z członkami drużyny w trybie losowego bohatera, czy wymieniać piętra (kolejność, w jakiej wybierani są bohaterowie) i wstępnie wybrane miejsca z członkami drużyny w trybie rekrutacji.

*Ustawienie zamiany bohaterów i pozycji jest stosunkowo proste, więc nie będę się tutaj wdawał w szczegóły. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

W **Więcej ustawień** **Podłog wymiany** możesz ustawić kolejność wymiany (tj. piętra) i tryb wymiany.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Tryb wymiany*:
- Tylko kolejność docelowa: Akceptuj prośby od członków drużyny zgodne z określoną *kolejnością*.
- Zawiera priorytet celu: Akceptuj prośby od członków drużyny ≤ określony *kolejność*.
- Rozkaz odroczenia z celem: Akceptuj prośby od członków drużyny ≥ określone *kolejność*.
- Zakres w oparciu o kolejność docelową: Akceptuje prośby od członków drużyny z *kolejnością* ≤ (*określona kolejność* - *zakres*) i *kolejność* ≥ (*określona kolejność* + *zakres*).

Ponadto w **Innych ustawieniach** dostępne są dwie opcje wymiany odmów. Gdy te dwa elementy są włączone**, jeśli członek drużyny poprosi o wymianę bohaterów z tobą lub wybierze pozycję, która nie spełnia określonych warunków, prośba o wymianę zostanie automatycznie odrzucona. **W przeciwnym razie** nie zostaną podjęte żadne działania. Możesz zdecydować, czy zgodzisz się na wymianę.

## Anty-dodge przy pick/ban
Gdy ta opcja jest włączona, w ostatniej sekundzie fazy BP zostanie wykonana opcja **Wybierz bohatera** lub **Wyłącz bohatera**.

>Możesz zmienić ustawienia trybu funkcji **Ban wybranych bohaterów Anti-Return** na *Stronie ustawień funkcji*.

## Odpowiedzi przy nieobecności
Ten element przełącznika jest przełącznikiem głównym i należy wprowadzić inne ustawienia. Na stronie konfiguracji **Więcej** określ, czy po opuszczeniu gry chcesz automatycznie odpowiadać na wiadomości znajomych lub zaproszenia do gry (opcje te są domyślnie włączone) i ustaw treść odpowiedzi.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Okno dodatkowe
Po włączeniu tej opcji podczas niektórych faz klienta będzie wyświetlane **dodatkowe okno**. Ponadto możesz kliknąć przycisk znajdujący się za tym przełącznikiem, aby wejść na **stronę konfiguracji** **dodatkowego okna**, w którym możesz także wyświetlić **atrybuty równowagi** (jeśli istnieją) bohatera w aktualnie dostępnym trybie rozrywki oraz skonfigurować konfigurację run i konfigurację niezależną od klienta dostępną w każdym trybie.

**Dodatkowe okno** Strona konfiguracyjna</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Jeśli chcesz dodać lub zaktualizować konfigurację run bohatera na **Stronie konfiguracji run**, musisz wybrać stronę run w **Kolekcje - Runy** w kliencie gry, edytować ją i zapisać, zmienić umiejętności przywoływacza w prawym górnym rogu i nacisnąć przycisk **Dodaj konfigurację** lub przycisk *Aktualizuj bieżącą konfigurację gry do tej konfiguracji* w **Element konfiguracji run**, aby zaktualizować, aby dodać lub zaktualizować konfigurację run.

**Dodatkowe okno**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Auto-zamykanie gry
Prosty i bezpośredni, proces gry kończy się automatycznie, gdy na koniec gry odtwarzana jest animacja zakończenia kryształu.

## Auto-ponowne łączenie
Spróbuj ponownie połączyć się, gdy gra będzie wymagała ponownego połączenia.

## Auto-karta (rozszerzenie)
Gdy bohater aktualnie w grze jest mistrzem kart, użyj klawiszy Z/X/C, aby automatycznie wybrać niebieskie/czerwone/żółte karty.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Funkcja ta jest realizowana poprzez przetwarzanie grafiki i symulację klawiatury. Testuje tylko dwie powszechnie używane rozdzielczości (1920x1080/2560x1440). Innych rozdzielczości nie można normalnie używać bez samodzielnej konfiguracji (szczególnie rozdzielczości inne niż współczynnik skalowania 16:9). Wykrywanie pozwala na określony zakres filtra, ale zaleca się, aby nie włączać filtra podczas korzystania z tej funkcji, aby uniknąć unieważnienia określonego wykrycia.

---

# Rozszerzenia (inne osoby)

>Treść opisana w tej sekcji jest prowadzona przez firmę Tudorose, a nie autora-hosta. Host `LOLAutomationTools` i jego oryginalna konfiguracja (`Config/`) są własnością © Lianxin i to repozytorium nie wprowadza w nich żadnych modyfikacji.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Moduły

|moduł|Jedno zdanie wyjaśnienia|Bliższe dane|
|---|---|---|
| **VoiceModule** |Naciśnij i przytrzymaj klawisz skrótu, aby mówić, a tekst zostanie wysłany na czat w grze po lokalnym rozpoznaniu.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Przenieś okno rekordu OP.GG Seraphine na stronę „Funkcje rozszerzone”.| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Szybki start

### 1. Przygotuj gospodarza
Pobierz `LOLAutomationTools` (≥ 2.9.801) z [strony wydania pierwotnego] (https://github.com/Seraph1ne/LOLAutomationTools/releases) i rozpakuj go do dowolnego katalogu, który zostanie zapisany jako `<宿主目录>` poniżej.
To repozytorium **nie dystrybuuje** programów hosta.

### 2. Pobierz model mowy
VoiceModule wymaga modelu ASR w formacie sherpa-onnx (około 254 MB). To repozytorium **nie rozpowszechnia** modelu. Aby zapoznać się z adresem pobierania i układem katalogów, zobacz [moduł głosowy/README.md → Pobieranie modelu](voice-module/README.md#模型下载).

### 3. Instalacja jednym kliknięciem
Wykonaj (PowerShell) w katalogu głównym tego magazynu:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Opcje:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Skrypt automatycznie: pobierze wersję `VoiceModule-latest.zip` → zatrzyma hosta → skopiuje dll/pdb → napisze `exe.config` (istnieje bez nadpisywania) → umieszcza domyślną konfigurację na `Extend/` (już istnieje bez nadpisywania) → skopiuj model.

### 4. Włącz
Uruchom `LOLAutomationTools.exe` → **Funkcje rozszerzone** po lewej stronie → **Grupowanie głosu** → Włącz przełącznik **Głos na tekst**. Naciśnij i przytrzymaj `空格`, aby mówić, zwolnij, aby wysłać wiadomość na czat zespołu.

## Pobierz

|dokument|zilustrować|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Skompilowany moduł + domyślna konfiguracja (~275 KB)|

## Licencja

|treść|licencja|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Pierwsza połowa (gospodarz oryginalnej treści)|© Lian Xin, własność Upstream|
|`LOLAutomationTools.exe` i towarzyszące mu biblioteki|© Lian Xin, **nie rozpowszechniany w tym repozytorium**|
|Seraphine (zależność programu uruchamiającego OP.GG)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **nie rozpowszechniany w tym repozytorium**|
|model środowiska wykonawczego sherpa-onnx/ASR|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **nie jest dystrybuowany w tym repozytorium**|

## Podziękowania
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Program hostujący
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— Źródło okna OP.GG
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Rozpoznawanie mowy offline

