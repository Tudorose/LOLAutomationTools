<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | **English** | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

This is a community translation (English) of the [Simplified Chinese README](./README.md). If anything reads awkwardly, PRs are welcome.

# Introduction
**LOLAutomationTools** is a feature-extension tool for **League of Legends**. It helps players perform simple client operations when they cannot free their hands or need to step away, saving a little time. The software deliberately avoids interfering with how players understand and enjoy the game, which is why some features still need manual configuration first (e.g. rune pages). Too many constraints make people numb and take the fun out of the game — play happily and build a friendly community.

# Features
- Auto pick
  - Pre-pick
- Auto ban
  - Ignore teammates' hover
  - Linked ban mode
- Random pick
- Anti-dodge on pick/ban
- Auto accept
  - Delayed accept
- Create lobby
- Find match
  - Queue-timeout detection
- Trade
  - Trade champions in ARAM
    - Or only passively accept trades from others
    - Decline trades for non-picked champions
  - Trade positions in draft mode
    - Or only passively accept position trades from others
    - Decline trades for non-preferred positions
  - Trade pick order in draft mode
    - Or only passively accept order trades from others
    - Decline trades for unconfigured orders
- Skip honor page
- Skip unlock page
- Chat auto-reply
  - Reply to friend messages while away
  - Reply to game invites while away
    - Decline game invites while away
- Auxiliary window
  - Balanced-champion buff display for fun modes
  - Auto-apply runes
  - Rune validation
  - Per-champion configuration
- Auto close game
- Auto reconnect
- Auto claim pass rewards (incl. TFT)
- Friend request handling
  - Bulk remove friends
- Customized career
  - Career background
  - Summoner icon
  - Client status
  - Status signature
  - Rank in status
  - Champion mastery points
  - Clear equipped icons
- Function key blocking
- Match history
  - Send match history
  - Duo detection in game
  - Spectate players
  - Post-game report
- In-game quick chat
- Blacklist
- Hotkey settings
- Theme settings
  - Dark / light theme
  - Adaptive theme
  - Custom theme
  - Background image
  - Custom fonts
- Extensions
  - Auto pick card (Twisted Fate)


## Auto pick
Before using **Auto pick** or **Auto ban**, you need to edit them on their configuration pages (the button behind each toggle).

Champions added under a lane only take effect in modes that have an *assigned position* (e.g. *Ranked* and *Nexus Blitz*); "Random" only takes effect in *random-champion* modes (e.g. *ARAM*, *URF* — the ban config has no random page); "General" applies to all other modes (i.e. everything not listed above). When auto-picking, the tool goes through the **Auto pick** list from top to bottom.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pre-pick
Works the same as **Auto pick**, but **Pre-pick** only takes effect in modes with a ban phase, such as *Ranked* and some fun modes that ban champions.

## Auto ban
The **Auto ban** page is nearly identical to **Auto pick**; it only adds a mode-switch button in the top-right corner.

*Normal ban mode*: Same logic as the **Auto pick** page. If no champion is configured when the ban phase ends, nothing is banned (empty ban at 0 s).

*Linked ban mode*: Items in the list are replaced by the corresponding champion from your **Auto pick** config. After selecting an item, double-click a champion on the left to add it to that champion's **ban group**. When auto-banning, the tool follows the **Auto pick** order and bans from each champion's **ban group**; if no group contains a champion to ban, it falls back to normal ban mode.

> If *Ignore teammates' hover* is enabled, the ban step skips the team-hover check. Not recommended.

## Auto accept
Automatically accepts when a match is found.

> With *Delayed accept* enabled, the match is accepted only in the last second of the countdown.

## Create lobby
Use the **Create lobby** button to create a lobby manually, or enable the toggle to create one automatically.

> *Auto create lobby* requires choosing the game mode under *More settings*; that choice is not saved to the config.

## Find match
Automatically starts matchmaking. Only works inside a lobby where you are the owner.

> With *Timeout detection* enabled, the tool re-queues once the queue has exceeded the estimated time by the configured margin.

## Skip honor
Skips the honor page shown by teammates at the end of a match.

## Skip end-of-game
Skips the end-of-game wait (black screen / loading spinner) or the post-game screen and returns to the lobby.

## Trade
Has a master toggle and three independent sub-toggles; further setup is required. In the **Trade** *More settings*, choose whether to trade champions in ARAM, or trade pick order and position in draft mode.

*Champion and position trading are straightforward and need no further explanation.*

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

In the **Trade pick order** *More settings* you can set the orders (pick positions) to trade and the trade mode.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Trade mode*:
- Exact order only: accept requests from teammates whose *order* matches exactly.
- Exact order or earlier: accept requests with *order* ≤ the specified *order*.
- Exact order or later: accept requests with *order* ≥ the specified *order*.
- Range around order: accept requests with *order* ≤ (*specified order* − *range*) or *order* ≥ (*specified order* + *range*).

In addition, **Other settings** has two "decline trade" options. When **enabled**, a teammate's request that does not meet the conditions is declined automatically; **otherwise** nothing is done and you decide whether to accept.

## Anti-dodge on pick/ban
When enabled, **Auto pick** or **Auto ban** runs in the last second of the pick/ban phase.

> You can change the mode of this feature on the *Feature settings* page.

## Away replies
This toggle is the master switch; further setup is required. In the **More** page, choose whether to auto-reply to friend messages or game invites while away (all enabled by default) and set the reply text.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Auxiliary window
When enabled, the **Auxiliary window** appears during certain client phases. The button behind the toggle opens its **configuration page**, where you can also view a champion's **balanced stats** in the fun modes where they apply (if any) and configure the rune pages and client settings available in each mode.

**Auxiliary window** configuration page</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

> To add or update a champion's rune page on the **Rune page**, you must first open a rune page under **Collection → Runes** in the game client, edit and save it, change the summoner spells from the top-right, then press **Add configuration**, or press *Update this config from current game config* on the rune entry you want to update.

**Auxiliary window**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Auto close game
Exactly what it says: when the nexus-explosion animation plays at the end of a match, the game process is closed automatically.

## Auto reconnect
Attempts to reconnect when the game asks for a reconnection.

## Auto pick card (extension)
When you are playing Twisted Fate, the Z / X / C keys automatically pick the blue / red / yellow card.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

> This feature uses image processing and keyboard simulation. Only the two common resolutions (1920x1080 / 2560x1440) have been tested; other resolutions will not work without manual configuration (especially anything other than a 16:9 aspect ratio). The detection tolerates some filter range, but turning filters off is recommended so that a detection does not silently fail.

---

# Extensions (third-party)

> Everything in this section is maintained by Tudorose and is unrelated to the host author. The host `LOLAutomationTools` and its original configuration (`Config/`) belong to © 莲歆 and are not modified in this repository.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Modules

| Module | In one line | Details |
|---|---|---|
| **VoiceModule** | Push-to-talk, transcribe locally, send the text to in-game chat | [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** | Grafts Seraphine's OP.GG match-history window onto the "Extensions" page | [opgg-launcher/README.md](opgg-launcher/README.md) |

## Quick start

### 1. Get the host
Download `LOLAutomationTools` (≥ 2.9.801) from the [upstream releases](https://github.com/Seraph1ne/LOLAutomationTools/releases) and extract it anywhere (called `<host dir>` below).
The host program is **not** redistributed here.

### 2. Download the speech model
VoiceModule needs a sherpa-onnx ASR model (about 254 MB). The model is **not** redistributed here; see [voice-module/README.md → Model download](./voice-module/README.md#模型下载) for the download link and folder layout.

### 3. One-line install
From the repository root (PowerShell):
```powershell
.\scripts\install.ps1 -HostDir <host dir> -ModelDir <extracted model dir>
```
Optional:
```powershell
-WithOpgg -SeraphineDir <Seraphine dir>    # also install the OP.GG launcher
-VoiceZip <local zip>                       # offline install, skip download
```
The script will: download `VoiceModule-latest.zip` from the latest Release → stop the host → copy the dll/pdb → write `exe.config` (kept if it already exists) → place default configs into `Extend/` (kept if they already exist) → copy the model.

### 4. Enable
Start `LOLAutomationTools.exe` → **Extensions** in the left nav → **Voice** group → turn on **Speech-to-text**. Hold `Space` to talk; release to send to team chat.

## Download

| File | Description |
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) | Compiled module + default configs (about 275 KB) |

## Licensing

| Content | License |
|---|---|
| `voice-module/`, `opgg-launcher/launcher.py`, `scripts/` | [MIT](LICENSE) |
| `Config/` and the first half of `README.md` (original host content) | © 莲歆, owned by upstream |
| `LOLAutomationTools.exe` and its bundled libraries | © 莲歆, **not redistributed here** |
| Seraphine (required by the OP.GG launcher) | [GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **not redistributed here** |
| sherpa-onnx runtime / ASR models | [Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **not redistributed here** |

## Credits
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) — the host program
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) — source of the OP.GG window
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) — offline speech recognition
