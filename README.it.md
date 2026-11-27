<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | **Italiano** | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Questa è una traduzione della community (italiano) del [README in cinese semplificato](./README.md). Sono benvenute PR di correzione.

# Introduzione
**LOLAutomationTools** è uno strumento di espansione delle funzioni per **"League of Legends"**; viene utilizzato per aiutare i giocatori a eseguire alcune semplici operazioni client per risparmiare un po' di tempo in alcune scene in cui non possono liberare le mani o devono allontanarsi temporaneamente; il software non interferirà troppo con la comprensione e il gameplay del gioco da parte del giocatore, quindi alcune funzioni devono ancora essere configurate manualmente (come la configurazione delle rune dell'eroe). Troppa moderazione renderà le persone insensibili e perderà il divertimento del gioco stesso; giocare attivamente e felicemente per costruire un ambiente armonioso.

# Funzionalità
- Auto-pick
  - Pre-pick
- Auto-ban
  - Ignora la selezione della squadra
  - Modalità gruppo disabilitato
- Pick casuale
- Anti-dodge in pick/ban
- Auto-accettazione
  - Ritardo nell'accettazione dei giochi
- Crea lobby
- Cerca partita
  - Rilevamento del timeout della partita
- Scambio
  - Scambia gli eroi in modalità casuale
    - O semplicemente accetta passivamente che altri giocatori scambino eroi
    - Rifiuta gli scambi di eroi non scelti
  - Selezione dello scambio della modalità Omen
    - Oppure ricevi passivamente le selezioni di scambio di posizione di altri giocatori
    - Rifiuta gli scambi di bit non preselezionati
  - Scambio di piani in modalità reclutamento
    - O semplicemente accettare passivamente che altri giocatori cambino piano
    - Rifiuta i cambi di piano non configurati
- Salta pagina onore
- Salta la pagina di sblocco
- Risposta automatica chat
  - Rispondi al messaggio di un amico mentre sei lontano
  - Rispondi agli inviti ai giochi mentre sei lontano
    - Rifiuta l'invito al gioco quando esci
- Finestra ausiliaria
  - Visualizzazione BUFF del bilanciamento dell'eroe in modalità intrattenimento
  - Applica automaticamente le rune
  - Correzione degli errori delle rune
  - Configurazione indipendente dall'eroe
- Chiudi gioco auto.
- Riconnessione auto.
- Ricevi automaticamente le ricompense del pass (incluse Teamfight Tactics)
- Elaborazione della richiesta di amicizia
  - Elimina gli amici in batch
- carriera personalizzata
  - Sfondo di carriera
  - Avatar dell'evocatore
  - stato del cliente
  - firma dello stato
  - frammento del nome
  - Punti obiettivo dell'eroe
  - Medaglie trasparenti da indossare
- Blocco dei tasti funzione
- Registra la query
  - Invia risultati
  - Rilevamento di hacking all'interno del gioco
  - I giocatori guardano la partita
  - I giocatori riferiscono dopo la partita
- Chiama in ufficio
- lista nera
- Impostazioni dei tasti di scelta rapida
- Impostazioni del tema
  - Tema scuro/chiaro
  - Tema adattivo
  - Tema personalizzato
  - Impostazioni dell'immagine di sfondo
  - Personalizzazione dei caratteri
- Funzioni estese
  - Selezione automatica delle carte (Card Master)

## Auto-pick
Prima di utilizzare **Seleziona Eroe** e **Disabilita Eroe**, è necessario eseguire operazioni di modifica sulla pagina di configurazione (pulsante dietro l'elemento cambia).

Gli oggetti dell'eroe aggiunti nelle impostazioni del ramo hanno effetto solo in alcune modalità di gioco con *posizioni preselezionate* (come *Qualificato* e *Blitz estremo*), quelli casuali hanno effetto solo nelle modalità *Eroe casuale* (come *Arci*, *Rissa infinita*, la pagina di configurazione casuale non è inclusa nella configurazione dell'eroe disabilitato) e sono generalmente validi in tutte le altre modalità (escluse le modalità elencate in precedenza, questo per motivi di specifiche di utilizzo). Quando si esegue la selezione automatica dell'eroe, l'eroe verrà selezionato in base a **Seleziona eroi** Gli elementi di configurazione vengono selezionati dall'alto verso il basso.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pre-pick
La logica di esecuzione di questa funzione è sostanzialmente la stessa di **Seleziona Eroi**. La differenza è che gli **Eroi preselezionati** avranno effetto solo nelle modalità con livelli disabilitati, come *Qualificata* e alcune modalità di intrattenimento che richiedono eroi disabili.

## Auto-ban
La pagina di configurazione **Disabilita Eroe** è sostanzialmente identica alla pagina di configurazione **Seleziona Eroe**. Solo che c'è un pulsante per cambiare modalità nell'angolo in alto a destra. Fare clic sul pulsante per passare alla modalità disabilitata.

*Modalità ban normale*: la logica operativa di questa modalità è coerente con la pagina di configurazione di **Seleziona eroi**. Quando si esegue il ban automatico degli eroi, se non è configurato alcun eroe disabilitato, il giocatore verrà bannato per 0 secondi del tempo rimanente della fase Ban.

*Modalità disabilitazione gruppo*: gli elementi nell'elenco di configurazione verranno sostituiti dagli eroi corrispondenti nella configurazione **Seleziona eroi**. Quando selezioni un oggetto, fai doppio clic sull'oggetto dell'eroe a sinistra per aggiungerlo al **Disabilita gruppo** dell'eroe. Quando si disabilita automaticamente l'eroe, verrà seguito l'ordine degli elementi di configurazione di **Seleziona eroi**. Se non ci sono eroi da disabilitare nel **Disabilita gruppo** di tutte le configurazioni di **Seleziona eroi**, verranno disabilitati secondo la logica della normale modalità ban.

>Se *Ignora preselezione compagno di squadra* è abilitato, il rilevamento della preselezione della squadra verrà saltato quando si esegue un ban automatico dell'eroe. Non è consigliabile abilitare questa opzione.

## Auto-accettazione
Accetta automaticamente la corrispondenza dopo essere stata abbinata.

>Quando l'opzione *Ritarda accettazione corrispondenza* è abilitata, **Accetta corrispondenza** accetterà automaticamente la corrispondenza solo quando rimane l'ultimo secondo del conto alla rovescia per l'accettazione.

## Crea lobby
Puoi creare una corrispondenza manualmente tramite il pulsante **Crea corrispondenza** o attivare questo interruttore per creare una corrispondenza automaticamente.

>*Crea automaticamente un gioco* Devi selezionare la modalità di gioco che desideri creare in *Altre impostazioni*, questa opzione non verrà salvata nella configurazione.

## Cerca partita
Cerca automaticamente le corrispondenze. Ciò avrà effetto solo quando ti trovi in ​​una stanza in modalità partita e sei il proprietario della squadra (host).

>Se l'opzione *Rilevamento timeout* è abilitata, le corrispondenze verranno automaticamente ricercate nuovamente nella coda delle corrispondenze se la stima della coda supera l'intervallo specificato.

## salta i complimenti
Salta la pagina di elogio del compagno di squadra alla fine del gioco.

## Salta fine partita
Salta l'attesa per la liquidazione alla fine della partita (caricamento della schermata nera in cerchi) o la pagina di liquidazione post partita e torna alla stanza della modalità di gioco.

## Scambio
Contiene l'elemento interruttore principale e tre elementi interruttore indipendenti; è inoltre necessario effettuare altre impostazioni. Nelle impostazioni aggiuntive della **Funzione di scambio**, imposta se scambiare eroi con compagni di squadra in modalità eroe casuale o scambiare piani (l'ordine in cui vengono selezionati gli eroi) e slot preselezionati con compagni di squadra in modalità reclutamento.

*L'impostazione dello scambio di eroi e di posizione è relativamente semplice, quindi non entrerò nei dettagli qui. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

In **Altre impostazioni** di **Piani di scambio**, puoi impostare l'ordine di scambio (ovvero i piani) e la modalità di scambio.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Modalità di scambio*:
- Solo ordine target: accetta le richieste dei compagni di squadra coerenti con l'*ordine* specificato.
- Contiene la priorità obiettivo: accetta richieste dai compagni di squadra ≤ all'*ordine* specificato.
- Ordine di rinvio con obiettivo: accetta le richieste dei compagni di squadra ≥ l'*ordine* specificato.
- Ambito basato sull'ordine di destinazione: accetta richieste dai compagni di squadra con *ordine* ≤ (*ordine specificato* - *ambito*) e *ordine* ≥ (*ordine specificato* + *ambito*).

Inoltre, ci sono due opzioni di scambio del rifiuto in **Altre impostazioni**. Quando questi due sono abilitati,** se un compagno di squadra richiede di scambiare eroi con te o seleziona una posizione che non rientra nelle condizioni determinate, la richiesta di scambio verrà automaticamente rifiutata. **Altrimenti** non verrà intrapresa alcuna azione. Puoi decidere se accettare lo scambio.

## Anti-dodge in pick/ban
Quando è abilitato, **Seleziona Eroe** o **Disabilita Eroe** verrà eseguito all'ultimo secondo della fase BP.

>Puoi modificare le impostazioni della modalità della funzione **Ban Anti-ritorno di eroi selezionati** nella *Pagina Impostazioni funzione*.

## Risposte in assenza
Questo elemento dell'interruttore è l'interruttore principale ed è necessario effettuare altre impostazioni. Nella pagina di configurazione **Altro**, imposta se rispondere automaticamente ai messaggi degli amici o agli inviti ai giochi quando esci (questi sono abilitati per impostazione predefinita) e imposta il contenuto testuale della risposta.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Finestra ausiliaria
Se abilitato, durante alcune fasi del client verrà visualizzata una **finestra aggiuntiva**. Inoltre, puoi fare clic sul pulsante dietro questo interruttore per accedere alla **Pagina di configurazione** della **Finestra aggiuntiva**, dove puoi anche visualizzare gli **Attributi di bilanciamento** (se presenti) dell'eroe nella modalità di intrattenimento attualmente disponibile e configurare la configurazione delle rune e la configurazione indipendente dal client disponibile in ciascuna modalità.

**Finestra aggiuntiva** Pagina di configurazione</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Se desideri aggiungere o aggiornare la configurazione delle rune dell'eroe nella **Pagina di configurazione delle rune**, devi selezionare una pagina delle rune in **Collezioni - Rune** nel client di gioco, modificarla e salvarla, cambiare le abilità dell'evocatore dall'angolo in alto a destra e premere il pulsante **Aggiungi configurazione** o il pulsante *Aggiorna la configurazione corrente del gioco a questa configurazione* nell'**Elemento configurazione rune** da aggiornare per aggiungere o aggiornare la configurazione delle rune.

**Finestra aggiuntiva**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Chiudi gioco auto.
Semplice e diretto, il processo di gioco si chiude automaticamente quando viene riprodotta l'animazione finale del cristallo alla fine del gioco.

## Riconnessione auto.
Tentare di riconnettersi quando è necessario riconnettersi al gioco.

## Carta automatica (estensione)
Quando l'eroe attualmente nel gioco è un maestro delle carte, usa i tasti Z/X/C per selezionare automaticamente le carte blu/rosse/gialle.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Questa funzione viene implementata utilizzando l'elaborazione grafica e la simulazione della tastiera. Testa solo le due risoluzioni comunemente utilizzate (1920x1080/2560x1440). Altre risoluzioni non possono essere utilizzate normalmente senza l'autoconfigurazione (in particolare risoluzioni diverse dal rapporto di scala 16:9). Il rilevamento consente un determinato intervallo di filtro, ma si consiglia di non attivare il filtro quando si utilizza questa funzione per evitare di invalidare un determinato rilevamento.

---

# Estensioni (terze parti)

>Il contenuto descritto in questa sezione è gestito da Tudorose, non dall'autore ospitante. L'host `LOLAutomationTools` e la sua configurazione originale (`Config/`) sono di proprietà di © Lianxin e questo repository non apporta alcuna modifica ad essi.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Moduli

|modulo|Spiegazione in una frase|Dettagli|
|---|---|---|
| **VoiceModule** |Tieni premuto il tasto di scelta rapida per parlare e il testo verrà inviato alla chat di gioco dopo il riconoscimento locale.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Innestare la finestra di registrazione OP.GG di Seraphine nella pagina "Funzioni estese".| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Avvio rapido

### 1. Preparare l'ospite
Scarica `LOLAutomationTools` (≥ 2.9.801) dalla [pagina della versione upstream] (https://github.com/Seraph1ne/LOLAutomationTools/releases) ed estrailo in una directory qualsiasi, che verrà registrata come `<宿主目录>` di seguito.
Questo repository **non distribuisce** programmi host.

### 2. Scarica il modello vocale
VoiceModule richiede un modello ASR in formato sherpa-onnx (circa 254 MB). Questo repository **non distribuisce** il modello. Per l'indirizzo di download e il layout della directory, vedere [voice-module/README.md → Download modello](voice-module/README.md#模型下载).

### 3. Installazione con un clic
Esegui (PowerShell) nella directory principale di questo warehouse:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Opzioni:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Lo script eseguirà automaticamente le seguenti operazioni: Scarica Release `VoiceModule-latest.zip` → Arresta l'host → Copia dll/pdb → Scrivi `exe.config` (esiste senza sovrascrivere) → Posiziona la configurazione predefinita su `Extend/` (esiste già senza sovrascrivere) → Copia il modello.

### 4. Abilita
Avvia `LOLAutomationTools.exe` → **Funzioni estese** a sinistra → Raggruppamento **Voce** → Attiva l'interruttore **Voce in testo**. Tieni premuto `空格` per parlare, rilascia per inviare alla chat del team.

## Download

|documento|illustrare|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Modulo compilato + configurazione predefinita (~275 KB)|

## Licenza

|contenuto|licenza|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Primo tempo (ospita contenuti originali)|© Lian Xin, di proprietà di Upstream|
|`LOLAutomationTools.exe` e le relative biblioteche|© Lian Xin, **non distribuito in questo repository**|
|Seraphine (dipendenza dal launcher OP.GG)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **non distribuito in questo repository**|
|modello runtime/ASR sherpa-onnx|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **non distribuito in questo repository**|

## Ringraziamenti
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Programma host
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— Sorgente finestra OP.GG
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Riconoscimento vocale offline

