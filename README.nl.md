<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | **Nederlands** | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Dit is een communityvertaling (Nederlands) van de [vereenvoudigd-Chinese README](./README.md). Correctie-PR's zijn welkom.

# Introductie
**LOLAutomationTools** is een functie-uitbreidingstool voor **"League of Legends"**; het wordt gebruikt om spelers te helpen enkele eenvoudige clientbewerkingen uit te voeren om een ​​kleine hoeveelheid tijd te besparen in sommige scènes waarin ze hun handen niet kunnen vrijmaken of tijdelijk moeten vertrekken; de software zal het begrip en de gameplay van het spel door de speler niet te veel verstoren, dus sommige functies moeten nog steeds handmatig worden geconfigureerd (zoals de configuratie van de Hero Rune). Te veel terughoudendheid zal mensen gevoelloos maken en het plezier van het spel zelf verliezen; speel actief en met plezier om een ​​harmonieuze omgeving op te bouwen.

# Functies
- Auto-kiezen
  - Vooraf kiezen
- Auto-bannen
  - Negeer de teamselectie
  - Groep uitgeschakelde modus
- Willekeurig kiezen
- Anti-dodge bij pick/ban
- Auto-accepteren
  - Vertraging bij het accepteren van games
- Lobby maken
- Wedstrijd zoeken
  - Matchtime-outdetectie
- Ruilen
  - Wissel helden uit in de willekeurige modus
    - Of accepteer gewoon passief dat andere spelers helden ruilen
    - Weiger niet-gekozen heldenwissels
  - Omen-moduswisselselectie
    - Of ontvang passief de positie-uitwisselingsselecties van andere spelers
    - Weiger niet-voorgeselecteerde bitswaps
  - Wervingsmodus wisselt van verdieping
    - Of accepteer gewoon passief dat andere spelers van verdieping wisselen
    - Niet-geconfigureerde verdiepingsuitwisselingen weigeren
- Eer-pagina overslaan
- Ontgrendelingspagina overslaan
- Chat auto-antwoord
  - Beantwoord het bericht van een vriend terwijl u weg bent
  - Reageer op speluitnodigingen terwijl u weg bent
    - Weiger de speluitnodiging als u weggaat
- Hulpvenster
  - Entertainmentmodus heldenbalans BUFF-weergave
  - Runen automatisch toepassen
  - Correctie van runefouten
  - Hero-onafhankelijke configuratie
- Spel auto-sluiten
- Auto-herverbinden
- Ontvang automatisch pasbeloningen (inclusief Teamfight-tactieken)
- Verwerking van vriendschapsverzoeken
  - Verwijder vrienden in batches
- gepersonaliseerde carrière
  - Carrière achtergrond
  - Summoner-avatar
  - klantstatus
  - status handtekening
  - naamfragment
  - Prestatiepunten van helden
  - Duidelijke dragende medailles
- Functietoetsblokkering
- Vraag opnemen
  - Resultaten verzenden
  - Detectie van hacking in het spel
  - Spelers kijken naar het spel
  - Spelersrapporten na de wedstrijd
- Bel het kantoor
- zwarte lijst
- Instellingen voor sneltoetsen
- Thema-instellingen
  - Donker/licht thema
  - Adaptief thema
  - Aangepast thema
  - Instellingen achtergrondafbeelding
  - Aanpassing van lettertypen
- Uitgebreide functies
  - Automatische kaartselectie (Card Master)

## Auto-kiezen
Voordat je **Select Hero** en **Hero uitschakelen** gebruikt, moet je bewerkingsbewerkingen uitvoeren op de configuratiepagina (knop achter het schakelitem).

De helditems die in de vertakkingsinstellingen zijn toegevoegd, zijn alleen van kracht in sommige spelmodi met *voorgeselecteerde posities* (zoals *Gekwalificeerd* en *Extreme Blitz*), willekeurig zijn alleen van kracht in *Random Hero*-modi (zoals *Arcs*, *Infinite Brawl*, de willekeurige configuratiepagina is niet opgenomen in de uitgeschakelde heldconfiguratie), en zijn over het algemeen geldig in alle andere modi (met uitzondering van de eerder genoemde modi, dit is omwille van de gebruiksspecificaties). Bij het uitvoeren van automatische heldselectie wordt de held geselecteerd in overeenstemming met **Select Heroes** Configuratie-items worden van boven naar beneden geselecteerd.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Vooraf kiezen
De uitvoeringslogica van deze functie is in principe hetzelfde als **Select Heroes**. Het verschil is dat **Vooraf geselecteerde helden** alleen van kracht zijn in modi met uitgeschakelde levels, zoals *Gekwalificeerd* en sommige entertainmentmodi waarvoor uitgeschakelde helden nodig zijn.

## Auto-bannen
De configuratiepagina **Hero uitschakelen** is in principe hetzelfde als de configuratiepagina **Select Hero**. Alleen is er rechtsboven een knop om van modus te wisselen. Klik op de knop om naar de uitgeschakelde modus te schakelen.

*Normale verbanningsmodus*: De werkingslogica van deze modus komt overeen met de configuratiepagina van **Select Heroes**. Als er bij het uitvoeren van de automatische verbanning van helden geen uitgeschakelde held is geconfigureerd, wordt de speler binnen 0 seconden van de resterende tijd van de verbanningsfase verbannen.

*Group Disable Mode*: De items in de configuratielijst worden vervangen door de overeenkomstige helden in de **Select Heroes**-configuratie. Wanneer u een item selecteert, dubbelklikt u op het helditem aan de linkerkant om het toe te voegen aan de **Uitschakelgroep** van de held. Bij het automatisch uitschakelen van de held wordt de volgorde van de configuratie-items van **Select Heroes** gevolgd. Als er geen helden zijn die uitgeschakeld kunnen worden in de **Groep uitschakelen** van alle **Select Heroes**-configuraties, worden ze uitgeschakeld volgens de logica van de normale verbanningsmodus.

>Als *Negeer voorselectie teamgenoten* is ingeschakeld, wordt de detectie van teamvoorselectie overgeslagen bij het uitvoeren van een automatische heldenban. Het wordt niet aanbevolen om deze optie in te schakelen.

## Auto-accepteren
Accepteer de match automatisch nadat deze is gematcht.

>Wanneer de optie *Accepteren van overeenkomsten uitstellen* is ingeschakeld, accepteert **Overeenkomsten accepteren** de wedstrijd alleen automatisch wanneer de laatste seconde van het aftellen van de acceptatie over is.

## Lobby maken
Je kunt handmatig een match maken via de knop **Match maken** of deze schakelaar aanzetten om automatisch een match te maken.

>*Automatisch een game maken* Je moet de gamemodus selecteren die je wilt maken in *Meer instellingen*. Deze optie wordt niet opgeslagen in de configuratie.

## Wedstrijd zoeken
Automatisch zoeken naar overeenkomsten. Dit heeft alleen effect als je in een wedstrijdmoduskamer bent en de teameigenaar (host) bent.

>Als de optie *Time-outdetectie* is ingeschakeld, worden overeenkomsten automatisch opnieuw gezocht in de overeenkomstwachtrij als de wachtrijschatting het opgegeven interval overschrijdt.

## complimenten overslaan
Sla de teamgenoot-lofpagina aan het einde van het spel over.

## Einde overslaan
Sla het wachten op de afhandeling aan het einde van het spel over (zwart scherm wordt in cirkels geladen) of de afwikkelingspagina na de wedstrijd, en keer terug naar de spelmoduskamer.

## Ruilen
Bevat het hoofdschakelaaritem en drie onafhankelijke schakelaaritems, je moet ook andere instellingen maken. In de **Uitwisselingsfunctie** meer instellingen kun je instellen of je helden wilt uitwisselen met teamgenoten in de willekeurige heldenmodus of verdiepingen (de volgorde waarin helden worden geselecteerd) en vooraf geselecteerde slots wilt uitwisselen met teamgenoten in de rekruteringsmodus.

*Het instellen van het wisselen van helden en het wisselen van posities is relatief eenvoudig, dus ik zal hier niet in details treden. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

In **Meer instellingen** van **Uitwisselingsvloeren** kunt u de volgorde van de uitwisseling (d.w.z. verdiepingen) en de uitwisselingsmodus instellen.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Exchange-modus*:
- Alleen doelvolgorde: Accepteer verzoeken van teamgenoten die consistent zijn met de opgegeven *volgorde*.
- Bevat doelprioriteit: accepteer verzoeken van teamgenoten ≤ de opgegeven *volgorde*.
- Uitstelbestelling met doel: accepteer verzoeken van teamgenoten ≥ de opgegeven *bestelling*.
- Reikwijdte gebaseerd op doelvolgorde: Accepteert verzoeken van teamgenoten met *bestelling* ≤ (*gespecificeerde volgorde* - *scope*) en *bestelling* ≥ (*gespecificeerde volgorde* + *scope*).

Daarnaast zijn er twee opties voor het omwisselen van weigeringen in **Overige instellingen**. Wanneer deze twee zijn ingeschakeld**, wordt het uitwisselingsverzoek automatisch afgewezen als een teamgenoot vraagt ​​om helden met je uit te wisselen of een positie selecteert die niet binnen de vastgestelde voorwaarden valt. **Anders** wordt er geen actie ondernomen. U kunt beslissen of u de ruil accepteert.

## Anti-dodge bij pick/ban
Als dit is ingeschakeld, wordt **Select Hero** of **Disable Hero** uitgevoerd op de laatste seconde van de BP-fase.

>Je kunt de modusinstellingen van de **Ban Selected Heroes Anti-Return**-functie wijzigen op de *Functie-instellingenpagina*.

## Afwezigheidsantwoorden
Dit schakelitem is de hoofdschakelaar en u moet andere instellingen maken. Stel op de configuratiepagina **Meer** in of u automatisch wilt reageren op vriendberichten of game-uitnodigingen bij het verlaten (deze zijn standaard ingeschakeld) en stel de tekstinhoud van het antwoord in.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Hulpvenster
Indien ingeschakeld, wordt tijdens sommige clientfasen een **aanvullend venster** weergegeven. Daarnaast kun je op de knop achter deze schakelaar klikken om naar de **Configuratiepagina** van het **Extra venster** te gaan, waar je ook de **Balansattributen** (indien aanwezig) van de held in de momenteel beschikbare entertainmentmodus kunt bekijken, en de runeconfiguratie en client-onafhankelijke configuratie kunt configureren die in elke modus beschikbaar zijn.

**Extra venster** Configuratiepagina</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Als je de rune-configuratie van de held op de **Rune-configuratiepagina** wilt toevoegen of bijwerken, moet je een rune-pagina selecteren in **Verzamelingen - Runen** in de gameclient, deze bewerken en opslaan, de summoner-vaardigheden wijzigen in de rechterbovenhoek en op de knop **Configuratie toevoegen** of op de knop *Huidige spelconfiguratie bijwerken naar deze configuratie* in het **Rune-configuratie-item** om te worden bijgewerkt om de rune-configuratie toe te voegen of bij te werken.

**Extra venster**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Spel auto-sluiten
Eenvoudig en ongecompliceerd: het spelproces wordt automatisch afgesloten wanneer de kristal-eindanimatie aan het einde van het spel wordt afgespeeld.

## Auto-herverbinden
Probeer opnieuw verbinding te maken wanneer het spel opnieuw verbinding moet maken.

## Auto-kaart (extensie)
Als de held die momenteel in het spel zit een kaartmeester is, gebruik dan de Z/X/C-toetsen om automatisch blauwe/rode/gele kaarten te selecteren.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Deze functie wordt geïmplementeerd met behulp van grafische verwerking en toetsenbordsimulatie. Het test alleen de twee veelgebruikte resoluties (1920x1080/2560x1440). Andere resoluties kunnen niet normaal worden gebruikt zonder zelfconfiguratie (vooral andere resoluties dan de schaalverhouding 16:9). De detectie staat een bepaald filterbereik toe, maar het wordt aanbevolen om het filter niet in te schakelen wanneer u deze functie gebruikt om te voorkomen dat een bepaalde detectie ongeldig wordt.

---

# Extensies (derde partij)

>De inhoud die in deze sectie wordt beschreven, wordt onderhouden door Tudorose, niet door de gastauteur. De host `LOLAutomationTools` en zijn originele configuratie (`Config/`) zijn eigendom van © Lianxin, en deze repository brengt er geen wijzigingen in aan.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Modules

|module|Eén zin uitleg|Details|
|---|---|---|
| **VoiceModule** |Houd de sneltoets ingedrukt om te spreken. De tekst wordt na lokale herkenning naar de gamechat verzonden.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Graft Seraphine's OP.GG-recordvenster naar de pagina "Extended Functions".| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Snel starten

### 1. Bereid de gastheer voor
Download `LOLAutomationTools` (≥ 2.9.801) van [upstream releasepagina] (https://github.com/Seraph1ne/LOLAutomationTools/releases) en pak het uit naar een willekeurige map, die hieronder zal worden opgenomen als `<宿主目录>`.
Deze repository distribueert geen hostprogramma's.

### 2. Download het spraakmodel
VoiceModule vereist een ASR-model in sherpa-onnx-formaat (ongeveer 254 MB). Deze repository distribueert het model **niet**. Voor het downloadadres en de mapindeling, zie [voice-module/README.md → Modeldownload](voice-module/README.md#模型下载).

### 3. Installatie met één klik
Uitvoeren (PowerShell) in de hoofdmap van dit magazijn:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Opties:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Het script zal automatisch: Download Release `VoiceModule-latest.zip` → Stop de host → Kopieer dll/pdb → Schrijf `exe.config` (bestaat zonder overschrijven) → Plaats de standaardconfiguratie op `Extend/` (bestaat al zonder overschrijven) → Kopieer het model.

### 4. Inschakelen
Start `LOLAutomationTools.exe` → **Uitgebreide functies** aan de linkerkant → **Voice** Groeperen → Zet de schakelaar **Voice to Text** aan. Houd `空格` ingedrukt om te spreken, laat los om naar de teamchat te sturen.

## Download

|document|illustreren|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Gecompileerde module + standaardconfiguratie (~275 KB)|

## Licentie

|inhoud|licentie|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Eerste helft (host originele inhoud)|© Lian Xin, eigendom van Upstream|
|`LOLAutomationTools.exe` en de bijbehorende bibliotheken|© Lian Xin, **niet gedistribueerd in deze repository**|
|Seraphine (OP.GG-opstartprogramma-afhankelijkheid)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **niet gedistribueerd in deze repository**|
|sherpa-onnx runtime/ASR-model|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **niet gedistribueerd in deze repository**|

## Dankwoord
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Hostprogramma
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— OP.GG-vensterbron
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Offline spraakherkenning

