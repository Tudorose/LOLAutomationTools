<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | **Deutsch** | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Dies ist eine Community-Übersetzung (Deutsch) des [vereinfacht-chinesischen README](./README.md). Korrektur-PRs sind willkommen.

# Einführung
**LOLAutomationTools** ist ein Funktionserweiterungstool für **"League of Legends"**; Es wird verwendet, um Spielern dabei zu helfen, einige einfache Client-Vorgänge auszuführen, um in einigen Szenen, in denen sie ihre Hände nicht frei machen können oder vorübergehend gehen müssen, ein wenig Zeit zu sparen. Da die Software das Verständnis und Gameplay des Spiels durch den Spieler nicht zu sehr beeinträchtigt, müssen einige Funktionen noch manuell konfiguriert werden (z. B. die Konfiguration der Heldenrune). Zu viel Zurückhaltung führt dazu, dass die Leute taub werden und den Spaß am Spiel selbst verlieren; Spielen Sie aktiv und fröhlich, um eine harmonische Umgebung zu schaffen.

# Funktionen
- Auto-Pick
  - Pre-Pick
- Auto-Bann
  - Teamauswahl ignorieren
  - Gruppendeaktivierter Modus
- Zufallspick
- Anti-Dodge bei Pick/Ban
- Auto-Annehmen
  - Verzögerung bei der Annahme von Spielen
- Lobby erstellen
- Spiel suchen
  - Übereinstimmungs-Timeout-Erkennung
- Tauschen
  - Tausche Helden im Zufallsmodus
    - Oder akzeptieren Sie einfach passiv den Heldentausch anderer Spieler
    - Lehnen Sie den Austausch nicht ausgewählter Helden ab
  - Auswahl des Omen-Moduswechsels
    - Oder erhalten Sie passiv die Positionsaustauschauswahl anderer Spieler
    - Nicht vorgewählte Bit-Swaps ablehnen
  - Etagentausch im Rekrutierungsmodus
    - Oder akzeptieren Sie einfach passiv, dass andere Spieler das Stockwerk wechseln
    - Nicht konfigurierte Saalwechsel ablehnen
- Lobseite überspringen
- Seite zum Entsperren überspringen
- Chat-Antworten
  - Antworten Sie auch unterwegs auf die Nachricht eines Freundes
  - Reagieren Sie auch unterwegs auf Spieleinladungen
    - Spieleinladung beim Verlassen ablehnen
- Zusatzfenster
  - Heldenbalance-BUFF-Anzeige im Unterhaltungsmodus
  - Runen automatisch anwenden
  - Runenfehlerkorrektur
  - Heldenunabhängige Konfiguration
- Spiel automatisch schließen
- Auto-Reconnect
- Erhalten Sie automatisch Passbelohnungen (einschließlich Teamfight Tactics)
- Bearbeitung von Freundschaftsanfragen
  - Löschen Sie Freunde stapelweise
- personalisierte Karriere
  - Beruflicher Hintergrund
  - Beschwörer-Avatar
  - Kundenstatus
  - Statussignatur
  - Namensfragment
  - Heldenleistungspunkte
  - Klare Tragemedaillen
- Funktionstastensperre
- Datensatzabfrage
  - Ergebnisse senden
  - Erkennung von Hacking innerhalb des Spiels
  - Spieler schauen sich das Spiel an
  - Spielerberichte nach dem Spiel
- Rufen Sie im Büro an
- schwarze Liste
- Tastenkombinationseinstellungen
- Theme-Einstellungen
  - Dunkel/Hell-Thema
  - Adaptives Thema
  - Benutzerdefiniertes Thema
  - Hintergrundbildeinstellungen
  - Schriftartanpassung
- Erweiterte Funktionen
  - Automatische Kartenauswahl (Card Master)

## Auto-Pick
Bevor Sie **Hero auswählen** und **Hero deaktivieren** verwenden, müssen Sie Bearbeitungsvorgänge auf der Konfigurationsseite durchführen (Schaltfläche hinter dem Schalterelement).

Die in den Zweigeinstellungen hinzugefügten Heldengegenstände werden nur in einigen Spielmodi mit *vorab ausgewählten Positionen* wirksam (z. B. *Qualifiziert* und *Extremer Blitz*), Zufallsgegenstände wirken nur in den *Zufälligen Helden*-Modi (z. B. *Arcs*, *Infinite Brawl*, die Zufallskonfigurationsseite ist nicht in der deaktivierten Heldenkonfiguration enthalten) und sind allgemein in allen anderen Modi gültig (mit Ausnahme der zuvor aufgeführten Modi, dies dient der Verwendungsspezifikation). Bei der automatischen Heldenauswahl wird der Held gemäß **Helden auswählen** ausgewählt. Die Konfigurationselemente werden von oben nach unten ausgewählt.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pre-Pick
Die Ausführungslogik dieser Funktion ist grundsätzlich dieselbe wie bei **Select Heroes**. Der Unterschied besteht darin, dass **Vorausgewählte Helden** nur in Modi mit deaktivierten Stufen wirksam werden, wie z. B. *Qualifiziert* und einige Unterhaltungsmodi, die deaktivierte Helden erfordern.

## Auto-Bann
Die Konfigurationsseite **Hero deaktivieren** ist grundsätzlich identisch mit der Konfigurationsseite **Hero auswählen**. Lediglich in der oberen rechten Ecke gibt es eine Schaltfläche zum Umschalten des Modus. Klicken Sie auf die Schaltfläche, um in den deaktivierten Modus zu wechseln.

*Normaler Bannmodus*: Die Betriebslogik dieses Modus stimmt mit der Konfigurationsseite von **Select Heroes** überein. Wenn beim Ausführen der automatischen Sperrung von Helden kein deaktivierter Held konfiguriert ist, wird der Spieler innerhalb von 0 Sekunden der verbleibenden Zeit der Sperrphase gesperrt.

*Gruppen-Deaktivierungsmodus*: Die Elemente in der Konfigurationsliste werden durch die entsprechenden Helden in der Konfiguration **Helden auswählen** ersetzt. Wenn Sie einen Gegenstand auswählen, doppelklicken Sie links auf den Heldengegenstand, um ihn zur **Deaktivierungsgruppe** des Helden hinzuzufügen. Beim automatischen Deaktivieren des Helden wird die Reihenfolge der Konfigurationselemente von **Helden auswählen** eingehalten. Wenn es in der **Disable Group** aller **Select Heroes**-Konfigurationen keine zu deaktivierenden Helden gibt, werden sie gemäß der Logik des normalen Bannmodus deaktiviert.

>Wenn *Vorauswahl von Teamkollegen ignorieren* aktiviert ist, wird die Teamvorauswahlerkennung übersprungen, wenn ein automatischer Heldenverbot durchgeführt wird. Es wird nicht empfohlen, diese Option zu aktivieren.

## Auto-Annehmen
Akzeptieren Sie die Übereinstimmung automatisch, nachdem sie abgeglichen wurde.

>Wenn die Option *Annahme von Übereinstimmungen verzögern* aktiviert ist, akzeptiert **Übereinstimmungen annehmen** die Übereinstimmung erst dann automatisch, wenn die letzte Sekunde des Annahme-Countdowns abgelaufen ist.

## Lobby erstellen
Sie können ein Match manuell über die Schaltfläche **Match erstellen** erstellen oder diesen Schalter aktivieren, um automatisch ein Match zu erstellen.

>*Automatisch ein Spiel erstellen* Sie müssen unter *Weitere Einstellungen* den Spielmodus auswählen, den Sie erstellen möchten. Diese Option wird nicht in der Konfiguration gespeichert.

## Spiel suchen
Automatisch nach Übereinstimmungen suchen. Dies wird nur wirksam, wenn Sie sich in einem Match-Modus-Raum befinden und der Teambesitzer (Gastgeber) sind.

>Wenn die Option *Timeout-Erkennung* aktiviert ist, werden Übereinstimmungen automatisch erneut in der Übereinstimmungswarteschlange gesucht, wenn die Warteschlangenschätzung das angegebene Intervall überschreitet.

## Überspringen Sie Komplimente
Überspringen Sie die Lobseite für den Teamkollegen am Ende des Spiels.

## Spielende überspringen
Überspringen Sie das Warten auf die Abrechnung am Ende des Spiels (schwarzer Bildschirm wird in Kreisen geladen) oder die Abrechnungsseite nach dem Spiel und kehren Sie zum Spielmodusraum zurück.

## Tauschen
Enthält das Hauptschalterelement und drei unabhängige Schalterelemente. Sie müssen außerdem weitere Einstellungen vornehmen. Legen Sie in den weiteren Einstellungen der **Austauschfunktion** fest, ob Helden mit Teamkollegen im Zufallsheldenmodus oder Etagen (die Reihenfolge, in der Helden ausgewählt werden) und vorab ausgewählte Plätze mit Teamkollegen im Rekrutierungsmodus ausgetauscht werden sollen.

*Die Einstellung zum Tauschen von Helden und Positionen ist relativ einfach, daher werde ich hier nicht auf Details eingehen. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

In **Weitere Einstellungen** von **Börsenböden** können Sie die Umtauschreihenfolge (d. h. Böden) und den Umtauschmodus festlegen.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Austauschmodus*:
- Nur Zielreihenfolge: Akzeptieren Sie Anfragen von Teamkollegen, die der angegebenen *Reihenfolge* entsprechen.
- Enthält Zielpriorität: Akzeptieren Sie Anfragen von Teamkollegen ≤ der angegebenen *Reihenfolge*.
- Verschiebungsreihenfolge mit Ziel: Akzeptieren Sie Anfragen von Teamkollegen ≥ der angegebenen *Reihenfolge*.
- Umfang basierend auf Zielreihenfolge: Akzeptiert Anfragen von Teamkollegen mit *Reihenfolge* ≤ (*angegebene Reihenfolge* – *Umfang*) und *Reihenfolge* ≥ (*angegebene Reihenfolge* + *Umfang*).

Darüber hinaus gibt es in **Andere Einstellungen** zwei Optionen für den Ablehnungsaustausch. Wenn diese beiden aktiviert sind**, wird die Austauschanfrage automatisch abgelehnt, wenn ein Teamkollege den Austausch von Helden mit Ihnen beantragt oder eine Position auswählt, die nicht den festgelegten Bedingungen entspricht. **Ansonsten** werden keine Maßnahmen ergriffen. Sie können entscheiden, ob Sie den Umtausch akzeptieren möchten.

## Anti-Dodge bei Pick/Ban
Wenn dies aktiviert ist, wird **Held auswählen** oder **Held deaktivieren** in der letzten Sekunde der BP-Phase ausgeführt.

>Sie können die Moduseinstellungen der Funktion **Ban Selected Heroes Anti-Return** auf der *Funktionseinstellungsseite* ändern.

## Abwesenheitsantworten
Dieses Schalterelement ist der Hauptschalter und Sie müssen weitere Einstellungen vornehmen. Legen Sie auf der Konfigurationsseite **Mehr** fest, ob beim Verlassen automatisch auf Nachrichten von Freunden oder Spieleinladungen geantwortet werden soll (diese sind standardmäßig aktiviert), und legen Sie den Textinhalt der Antwort fest.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Zusatzfenster
Wenn diese Option aktiviert ist, wird während einiger Clientphasen ein **zusätzliches Fenster** angezeigt. Darüber hinaus können Sie auf die Schaltfläche hinter diesem Schalter klicken, um die **Konfigurationsseite** des **Zusatzfensters** aufzurufen, wo Sie auch die **Balance-Attribute** (falls vorhanden) des Helden im aktuell verfügbaren Unterhaltungsmodus anzeigen und die Runenkonfiguration und clientunabhängige Konfiguration konfigurieren können, die in jedem Modus verfügbar sind.

**Zusätzliches Fenster** Konfigurationsseite</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Wenn Sie die Runenkonfiguration des Helden auf der **Runenkonfigurationsseite** hinzufügen oder aktualisieren möchten, müssen Sie eine Runenseite in **Sammlungen – Runen** im Spielclient auswählen, sie bearbeiten und speichern, die Beschwörerfähigkeiten in der oberen rechten Ecke ändern und auf die Schaltfläche **Konfiguration hinzufügen** oder die Schaltfläche *Aktuelle Spielkonfiguration auf diese Konfiguration aktualisieren* im **Runenkonfigurationselement** klicken, um die Runenkonfiguration hinzuzufügen oder zu aktualisieren.

**Zusätzliches Fenster**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Spiel automatisch schließen
Einfach und unkompliziert: Der Spielvorgang wird automatisch geschlossen, wenn am Ende des Spiels die Kristall-Endanimation abgespielt wird.

## Auto-Reconnect
Versuchen Sie, die Verbindung wiederherzustellen, wenn das Spiel eine erneute Verbindung benötigt.

## Auto-Karte (Erweiterung)
Wenn der aktuell im Spiel befindliche Held ein Kartenmeister ist, verwenden Sie die Tasten Z/X/C, um automatisch blaue/rote/gelbe Karten auszuwählen.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Diese Funktion wird mithilfe von Grafikverarbeitung und Tastatursimulation implementiert. Es werden nur die beiden gängigen Auflösungen (1920x1080/2560x1440) getestet. Andere Auflösungen können ohne Selbstkonfiguration nicht normal genutzt werden (insbesondere andere Auflösungen als das Skalierungsverhältnis 16:9). Die Erkennung erlaubt einen bestimmten Filterbereich, es wird jedoch empfohlen, den Filter bei Verwendung dieser Funktion nicht einzuschalten, um zu vermeiden, dass eine bestimmte Erkennung ungültig wird.

---

# Erweiterungen (Drittanbieter)

>Der in diesem Abschnitt beschriebene Inhalt wird von Tudorose gepflegt, nicht vom Host-Autor. Der Host `LOLAutomationTools` und seine ursprüngliche Konfiguration (`Config/`) sind Eigentum von © Lianxin und dieses Repository nimmt keine Änderungen daran vor.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Module

|Modul|Erklärung in einem Satz|Einzelheiten|
|---|---|---|
| **VoiceModule** |Halten Sie die Tastenkombination gedrückt, um zu sprechen. Der Text wird nach der lokalen Erkennung an den Spielchat gesendet.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Transplantieren Sie das OP.GG-Datensatzfenster von Seraphine auf die Seite „Erweiterte Funktionen“.| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Schnellstart

### 1. Bereiten Sie den Host vor
Laden Sie `LOLAutomationTools` (≥ 2.9.801) von [Upstream-Release-Seite] (https://github.com/Seraph1ne/LOLAutomationTools/releases) herunter und extrahieren Sie es in ein beliebiges Verzeichnis, das unten als `<宿主目录>` aufgezeichnet wird.
Dieses Repository **verteilt** keine Hostprogramme.

### 2. Laden Sie das Sprachmodell herunter
VoiceModule erfordert ein ASR-Modell im Sherpa-onnx-Format (ca. 254 MB). Dieses Repository **verteilt** das Modell nicht. Informationen zur Download-Adresse und zum Verzeichnislayout finden Sie unter [voice-module/README.md → Model Download](voice-module/README.md#模型下载).

### 3. Ein-Klick-Installation
Führen Sie (PowerShell) im Stammverzeichnis dieses Warehouse aus:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Optionen:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Das Skript wird automatisch: Release `VoiceModule-latest.zip` herunterladen → Host anhalten → DLL/PDB kopieren → `exe.config` schreiben (existiert ohne Überschreiben) → Standardkonfiguration auf `Extend/` setzen (existiert bereits ohne Überschreiben) → Modell kopieren.

### 4. Aktivieren
Starten Sie `LOLAutomationTools.exe` → **Erweiterte Funktionen** auf der linken Seite → **Voice**-Gruppierung → Aktivieren Sie den Schalter **Voice to Text**. Halten Sie `空格` gedrückt, um zu sprechen, und lassen Sie es los, um es an den Team-Chat zu senden.

## Download

|dokumentieren|veranschaulichen|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Kompiliertes Modul + Standardkonfiguration (~275 KB)|

## Lizenz

|Inhalt|Lizenz|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Erste Hälfte (Originalinhalt hosten)|© Lian Xin, Eigentum von Upstream|
|`LOLAutomationTools.exe` und die dazugehörigen Bibliotheken|© Lian Xin, **nicht in diesem Repository verteilt**|
|Seraphine (OP.GG-Launcher-Abhängigkeit)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **nicht in diesem Repository verteilt**|
|Sherpa-onnx-Laufzeit-/ASR-Modell|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **nicht in diesem Repository verteilt**|

## Danksagung
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Host-Programm
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— OP.GG-Fensterquelle
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Offline-Spracherkennung

