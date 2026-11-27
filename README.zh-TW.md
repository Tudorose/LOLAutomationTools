<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | **繁體中文** | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>
# 簡介
**LOLAutomationTools** 是一款 **《英雄聯盟》** 的功能擴充工具；用於幫助玩家在部分因無法騰出雙手或需要暫離的場景時進行一些簡單的客戶端操作以節省少量時間；軟體不會過多干預玩家對遊戲方面的理解和玩法，所以部分功能仍需要先手動設定（如英雄符文設定），過多的拘束會讓人麻木，並失去遊戲本身的樂趣；積極快樂遊戲，共建和諧環境。

# 功能
- 選用英雄
  - 預選英雄
- 禁用英雄
  - 忽略隊友預選
  - 聯組禁用模式
- 隨機英雄
- 禁選英雄防退
- 接受對局
  - 延遲接受對局
- 建立對局
- 尋找對局
  - 匹配逾時偵測
- 交換功能
  - 隨機模式交換英雄
    - 或僅被動接受其他玩家交換英雄
    - 拒絕非選用英雄交換
  - 徵召模式交換選位
    - 或僅被動接受其他玩家交換選位
    - 拒絕非預選位交換
  - 徵召模式交換樓層
    - 或僅被動接受其他玩家交換樓層
    - 拒絕非設定樓層交換
- 跳過稱讚頁面
- 跳過解鎖頁面
- 聊天回覆控制
  - 離開時回覆好友訊息
  - 離開時回覆對局邀請
    - 離開時拒絕對局邀請
- 附加視窗
  - 娛樂模式英雄平衡BUFF顯示
  - 自動套用符文
  - 符文糾錯
  - 英雄獨立設定
- 自動關閉對局
- 自動重連對局
- 自動領取通行證獎勵（含聯盟戰棋）
- 好友請求處理
  - 批次刪除好友
- 個人化生涯
  - 生涯背景
  - 召喚師頭像
  - 客戶端狀態
  - 狀態簽名
  - 名片段位
  - 英雄成就點數
  - 清空佩戴徽章
- 功能鍵遮蔽
- 戰績查詢
  - 戰績發送
  - 對局內開黑偵測
  - 玩家對局觀戰
  - 賽後玩家檢舉
- 局內喊話
- 黑名單
- 快捷鍵設定
- 主題設定
  - 深/淺色主題
  - 自適應主題
  - 自訂主題
  - 背景圖片設定
  - 字型自訂
- 擴充功能
  - 自動選牌（卡牌大師）


## 選用英雄
在使用**選用英雄**和**禁用英雄**前，都需要在設定頁面進行編輯操作（開關項後面的按鈕）。

分路設定中新增的英雄項僅在部分有 *預選位* 的對局模式中生效（如 *排位賽* 和 *極限閃擊*），隨機僅在 *隨機英雄* 模式中生效（如 *極地大亂鬥*、*無限亂鬥*，禁用英雄設定中不包含隨機設定頁面），通用則是其他所有模式中生效（不包含之前列舉的模式，這是為了使用規範），在執行自動選用英雄時，將按照 **選用英雄** 的設定項，且由上而下的順序來進行選用。

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## 預選英雄
此功能的執行邏輯與**選用英雄**基本一致，區別在於**預選英雄**只會在具有禁用階段的模式中生效，如 *排位賽* 和部分需要禁用英雄的娛樂模式。

## 禁用英雄
**禁用英雄**設定頁面與**選用英雄**設定頁面基本一致，僅在右上角多了切換模式的按鈕，點擊按鈕可以切換禁用模式。

*正常禁用模式*：此模式操作邏輯與**選用英雄**的設定頁面一致，在執行自動禁用英雄時，如果沒有設定禁用的英雄，將在Ban階段剩餘時間0秒時空Ban。

*聯組禁用模式*：設定列表中的項將替換為 **選用英雄** 設定中的對應英雄，在選中一個項時，雙擊左側的英雄項來將其新增至英雄的**禁用組**中，在執行自動禁用英雄時，將按照 **選用英雄** 的設定項順序來進行禁用，如果所有 **選用英雄** 的設定 **禁用組** 中都沒有設定要禁用的英雄，則會按正常禁用模式的邏輯來禁用。

> 如果啟用了 *忽略隊友預選*，執行自動禁用英雄時將跳過隊伍預選偵測。不建議啟用該項。

## 接受對局
在匹配到對局後自動接受對局。

> 在啟用 *延遲接受對局* 選項後，**接受對局**僅會在接受倒數剩餘最後一秒時自動接受對局。

## 建立對局
你可以透過**建立對局**按鈕來手動建立對局或開啟此開關項來自動建立對局。

> *自動建立對局* 需要在 *更多設定* 處選擇要建立的對局模式，該選項不會儲存至設定中。

## 尋找對局
自動尋找對局，此項僅在對局模式房間中且自身為小隊擁有者（房主）時生效。

> 如果啟用了 *逾時偵測* 選項，將在匹配佇列中超過佇列估計時間達到指定的間隔時自動重新尋找對局。

## 跳過稱讚
跳過對局結束時隊友的稱讚頁面。

## 跳過結算
跳過對局結束時的等待結算（黑屏轉圈載入）或賽後結算頁面，並回到對局模式房間中。

## 交換功能
含主開關項與三個獨立開關項，你還需作其他設定。在**交換功能**更多設定中，設定是否在隨機英雄模式中與隊友交換英雄或是在徵召模式中與隊友交換樓層（選擇英雄的順序）和預選位。

*交換英雄與交換選位設定相對簡單，這裡不多贅述。*

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

在**交換樓層**的**更多設定**中，你可以設定交換的順序（即樓層）和交換模式。

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*交換模式*：
- 僅目標順序：接受與指定 *順序* 一致的隊友的請求。
- 包含目標的優先順序：接受 ≤ *順序* 的隊友的請求。
- 包含目標的延後順序：接受 ≥ *順序* 的隊友的請求。
- 基於目標順序的範圍：接受 *順序* ≤（*指定順序* - *範圍*）和 *順序* ≥（*指定順序* + *範圍*）的隊友的請求。

此外，在**其他設定**中還有兩個拒絕交換選項，這兩項在**啟用時**如果隊友請求與你交換英雄或選位時不在判定的條件內將會自動拒絕此次交換請求，**否則**不作任何操作，你可以自行決定是否接受交換。

## 禁選英雄防退
啟用此項後，會在BP階段的最後一秒執行**選用英雄**或**禁用英雄**。

> 你可以在 *功能設定頁面* 來更改**禁選英雄防退**功能的模式設定。

## 暫離回覆
此項開關項為主開關，你還需作其他設定。在 **更多** 設定頁面中，設定是否在離開時自動回覆好友訊息或對局邀請（各項預設為啟用狀態），並設定回覆的文字內容。

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## 附加視窗
啟用此項後，會在部分客戶端階段顯示 **附加視窗**。此外，你可以在此開關項的後方按鈕進入**附加視窗**的**設定頁面**，在此處也可以查看英雄在當前可用娛樂模式中的**平衡屬性**（如果有的話），並為其設定在各個模式中可用的符文設定和客戶端獨立設定。

**附加視窗** 設定頁面</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

> 如果你要在**符文設定頁面**新增或更新英雄的符文設定，需要在遊戲客戶端的 **藏品 - 符文** 中選擇一項符文頁編輯並儲存後，從右上角更改召喚師技能並按下**新增設定**按鈕或是要更新的**符文設定項**中的 *將當前遊戲設定更新至此設定* 按鈕來新增或更新符文設定。

**附加視窗**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## 自動關閉對局
簡單直白，在遊戲對局結束播放水晶終結動畫時自動關閉遊戲行程。

## 自動重連對局
在遊戲需要重新連線時嘗試進行重新連線。

## 自動選牌（額外擴充）
當前遊戲中使用的英雄為卡牌大師時，使用 Z/X/C 鍵自動選擇 藍/紅/黃 牌。

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

> 該功能使用圖形處理和鍵盤模擬方式實現，僅測試目前較常用的兩個解析度（1920x1080/2560x1440），其他解析度在未自行設定的情況下無法正常使用（特別是16：9縮放比之外的解析度），偵測允許一定的濾鏡範圍，但建議使用該功能時不要開濾鏡，以免導致某個偵測無效。

---

# 擴充模組（第三方）

> 本節所述內容由 Tudorose 維護，與宿主作者無關。宿主 `LOLAutomationTools` 及其原始設定（`Config/`）歸 © 蓮歆所有，本倉庫對它們不做任何修改。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## 模組一覽

| 模組 | 一句話說明 | 詳情 |
|---|---|---|
| **VoiceModule** | 按住快捷鍵說話，本地辨識後把文字發到遊戲聊天 | [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** | 把 Seraphine 的 OP.GG 戰績視窗嫁接到「擴充功能」頁 | [opgg-launcher/README.md](opgg-launcher/README.md) |

## 快速開始

### 1. 準備宿主
從[上游發布頁](https://github.com/Seraph1ne/LOLAutomationTools/releases)下載 `LOLAutomationTools`（≥ 2.9.801）並解壓縮到任意目錄，下文記作 `<宿主目錄>`。
本倉庫**不分發**宿主程式。

### 2. 下載語音模型
VoiceModule 需要 sherpa-onnx 格式的 ASR 模型（約 254 MB），本倉庫**不分發**模型，下載位址與目錄結構見 [voice-module/README.md → 模型下載](voice-module/README.md#模型下载)。

### 3. 一鍵安裝
在本倉庫根目錄執行（PowerShell）：
```powershell
.\scripts\install.ps1 -HostDir <宿主目錄> -ModelDir <解壓縮好的模型目錄>
```
可選項：
```powershell
-WithOpgg -SeraphineDir <Seraphine 目錄>    # 同時安裝 OP.GG launcher
-VoiceZip <本地 zip>                          # 離線安裝，跳過下載
```
腳本會自動：下載 Release 的 `VoiceModule-latest.zip` → 停止宿主 → 複製 dll/pdb → 寫入 `exe.config`（已存在不覆蓋）→ 放置預設設定到 `Extend/`（已存在不覆蓋）→ 複製模型。

### 4. 啟用
啟動 `LOLAutomationTools.exe` → 左側 **擴充功能** → **語音** 分組 → 打開 **語音轉文字** 開關。按住 `空格` 說話，放開即發送到隊內聊天。

## 下載

| 檔案 | 說明 |
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) | 編譯好的模組 + 預設設定（約 275 KB） |

## 授權

| 內容 | 授權 |
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
| `Config/`、`README.md` 前半部分（宿主原始內容） | © 蓮歆，歸上游所有 |
| `LOLAutomationTools.exe` 及其隨附函式庫 | © 蓮歆，**未在本倉庫分發** |
| Seraphine（OP.GG launcher 相依） | [GPL-3.0](https://github.com/ZhangBin-000/Seraphine)，**未在本倉庫分發** |
| sherpa-onnx 執行環境 / ASR 模型 | [Apache-2.0](https://github.com/k2-fsa/sherpa-onnx)，**未在本倉庫分發** |

## 致謝
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— 宿主程式
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— OP.GG 視窗來源
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— 離線語音辨識
