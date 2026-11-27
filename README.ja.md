<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | **日本語** | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

これは[簡体字中国語版 README](./README.md)のコミュニティ翻訳（日本語）です。不自然な箇所があれば PR を歓迎します。

# はじめに
**LOLAutomationTools** は **League of Legends** の機能拡張ツールです。両手が離せない場面や離席が必要な場面で、簡単なクライアント操作を代行し、わずかな時間を節約します。ゲームへの干渉は最小限に抑えており、一部の機能（ルーン設定など）は先に手動で設定する必要があります。制約が多すぎると人は麻痺し、ゲーム本来の楽しさを失ってしまいます。楽しく遊んで、健全なコミュニティを。

# 機能
- 自動ピック
  - 事前ピック
- 自動BAN
  - 味方のホバーを無視
  - 連動BANモード
- ランダムピック
- picking/BAN 離脱防止
- 自動受諾
  - 遅延受諾
- ルーム作成
- マッチング開始
  - タイムアウト検出
- トレード
  - ARAMでのチャンピオン交換
    - または他プレイヤーからの交換を自動で受け入れるのみ
    - ピックしていないチャンピオンの交換を拒否
  - ドラフトモードでのポジション交換
    - または他プレイヤーからの交換を自動で受け入れるのみ
    - 希望ポジション以外の交換を拒否
  - ドラフトモードでのピック順交換
    - または他プレイヤーからの交換を自動で受け入れるのみ
    - 未設定のピック順の交換を拒否
- 称賛ページをスキップ
- 解除ページをスキップ
- チャット自動返信
  - 離席中のフレンドメッセージに返信
  - 離席中のゲーム招待に返信
    - 離席中のゲーム招待を拒否
- 補助ウィンドウ
  - エンタメモードのバランス調整BUFF表示
  - ルーン自動適用
  - ルーン検証
  - チャンピオン個別設定
- ゲーム自動終了
- 自動再接続
- パス報酬の自動受取（TFT含む）
- フレンド申請の処理
  - フレンド一括削除
- 経歴のカスタマイズ
  - 経歴背景
  - サモナーアイコン
  - クライアント状態
  - ステータスメッセージ
  - 名前のランク表示
  - チャンピオンスコア
  - 装備アイコンのクリア
- ファンクションキーの無効化
- 戦績検索
  - 戦績の送信
  - ゲーム内のデュオ検出
  - 観戦
  - 試合後の通報
- ゲーム内クイックチャット
- ブラックリスト
- ホットキー設定
- テーマ設定
  - ダーク／ライトテーマ
  - 自動テーマ
  - カスタムテーマ
  - 背景画像
  - フォント設定
- 拡張機能
  - 自動カード選択（ツイステッド・フェイト）


## 自動ピック
**自動ピック** と **自動BAN** を使う前に、それぞれの設定ページで編集が必要です（トグルの後ろのボタン）。

レーンごとに追加したチャンピオンは、*希望ポジション* があるモード（*ランク* や *ネクサスブリッツ* など）でのみ有効です。「ランダム」は *ランダムピック* モード（*ARAM*、*URF* など。BAN設定にはランダムページはありません）でのみ有効です。「共通」はそれ以外のすべてのモードで有効です。自動ピック実行時は **自動ピック** の設定を上から順にたどります。

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## 事前ピック
**自動ピック** とほぼ同じ動作ですが、**事前ピック** はBANフェーズがあるモード（*ランク* や一部のエンタメモード）でのみ有効です。

## 自動BAN
**自動BAN** の設定ページは **自動ピック** とほぼ同じで、右上にモード切替ボタンが追加されているだけです。

*通常BANモード*：**自動ピック** と同じロジックです。BANするチャンピオンが未設定の場合、BANフェーズ残り0秒で空BANになります。

*連動BANモード*：リストの項目は **自動ピック** の対応するチャンピオンに置き換えられます。項目を選択後、左側のチャンピオンをダブルクリックしてそのチャンピオンの **BANグループ** に追加します。自動BAN時は **自動ピック** の設定順にBANグループをたどり、どこにもBAN対象がなければ通常BANモードのロジックにフォールバックします。

> *味方のホバーを無視* を有効にすると、BAN時にチームのホバー確認をスキップします。非推奨です。

## 自動受諾
マッチング成立後に自動で受諾します。

> *遅延受諾* を有効にすると、カウントダウン残り1秒で初めて受諾します。

## ルーム作成
**ルーム作成** ボタンで手動作成するか、トグルを有効にして自動作成します。

> *自動ルーム作成* には *詳細設定* でのモード選択が必要です。この選択は設定に保存されません。

## マッチング開始
自動でマッチングを開始します。自分がルームオーナーの場合のみ有効です。

> *タイムアウト検出* を有効にすると、予想待ち時間を設定した余裕だけ超えた時点で自動的に再マッチングします。

## 称賛スキップ
試合終了時の味方からの称賛ページをスキップします。

## 結果スキップ
試合終了時の待機（黒画面・ローディング）または結果画面をスキップしてルームに戻ります。

## トレード
マスタートグルと3つの独立トグルがあり、追加設定が必要です。**トレード** の *詳細設定* で、ARAMでのチャンピオン交換、ドラフトでのピック順・ポジション交換を設定します。

*チャンピオンとポジションの交換の設定は簡単なので、説明は割愛します。*

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

**ピック順交換** の *詳細設定* で、交換する順序（ピック順）と交換モードを設定できます。

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*交換モード*：
- 指定順のみ：指定 *順序* と一致する味方のリクエストのみ受け入れます。
- 指定順以前：*順序* ≤ 指定 *順序* のリクエストを受け入れます。
- 指定順以降：*順序* ≥ 指定 *順序* のリクエストを受け入れます。
- 指定順前後の範囲：*順序* ≤（指定 *順序* − *範囲*）または *順序* ≥（指定 *順序* + *範囲*）のリクエストを受け入れます。

さらに **その他の設定** に2つの「交換拒否」オプションがあります。**有効時**、条件を満たさない交換リクエストを自動で拒否します。**無効時**は何もせず、あなたが受け入れるかどうかを決めます。

## picking/BAN 離脱防止
有効にすると、pick/BANフェーズの最後の1秒で **自動ピック** または **自動BAN** を実行します。

> *機能設定ページ* でモードを変更できます。

## 離席時の自動返信
このトグルがマスタースイッチです。**詳細** ページで、離席中にフレンドメッセージやゲーム招待へ自動返信するか（デフォルトはすべて有効）、返信テキストを設定します。

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## 補助ウィンドウ
有効にすると、特定のクライアントフェーズで **補助ウィンドウ** が表示されます。トグルの後ろのボタンから **設定ページ** を開けます。ここでは、チャンピオンの現在のエンタメモードでの **バランス調整値**（あれば）の確認と、各モードで使えるルーン設定・クライアント個別設定ができます。

**補助ウィンドウ** 設定ページ</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

> **ルーン設定ページ** でチャンピオンのルーンを追加・更新するには、ゲームクライアントの **コレクション → ルーン** でルーンページを編集・保存し、右上からサモナースペルを変更したうえで **設定を追加** を押すか、更新対象の **ルーン設定項目** の *現在のゲーム設定でこの設定を更新* を押します。

**補助ウィンドウ**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## ゲーム自動終了
試合終了時のネクサス破壊アニメーションで、ゲームプロセスを自動終了します。

## 自動再接続
再接続が必要なときに自動で試みます。

## 自動カード選択（拡張）
ツイステッド・フェイト使用時、Z / X / C キーで青／赤／黄カードを自動選択します。

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

> 画像認識とキーボードシミュレーションで実現しています。一般的な2つの解像度（1920x1080 / 2560x1440）のみテスト済みで、それ以外は手動設定なしでは動作しません（特に16:9以外）。検出にはある程度のフィルター許容範囲がありますが、検出失敗を防ぐためフィルターはオフ推奨です。

---

# 拡張モジュール（サードパーティ）

> このセクションの内容は Tudorose が管理しており、ホスト作者とは無関係です。ホスト `LOLAutomationTools` とその元の設定（`Config/`）は © 莲歆 に帰属し、本リポジトリでは変更していません。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## モジュール一覧

| モジュール | 概要 | 詳細 |
|---|---|---|
| **VoiceModule** | プッシュトゥトークで話し、ローカルで文字起こししてゲーム内チャットに送信 | [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** | Seraphine の OP.GG 戦績ウィンドウを「拡張機能」ページに接ぎ木 | [opgg-launcher/README.md](opgg-launcher/README.md) |

## クイックスタート

### 1. ホストを用意
[上流のリリース](https://github.com/Seraph1ne/LOLAutomationTools/releases)から `LOLAutomationTools`（≥ 2.9.801）をダウンロードし、任意の場所に展開します（以下 `<ホストディレクトリ>`）。
本リポジトリはホストプログラムを **再配布していません**。

### 2. 音声モデルをダウンロード
VoiceModule には sherpa-onnx 形式の ASR モデル（約 254 MB）が必要です。モデルは **再配布していません**。ダウンロード先と配置は [voice-module/README.md → モデル下载](voice-module/README.md#模型下载) を参照してください。

### 3. ワンラインインストール
リポジトリルートで（PowerShell）：
```powershell
.\scripts\install.ps1 -HostDir <ホストディレクトリ> -ModelDir <展開済みモデルディレクトリ>
```
オプション：
```powershell
-WithOpgg -SeraphineDir <Seraphine ディレクトリ>    # OP.GG launcher もインストール
-VoiceZip <ローカル zip>                             # オフラインインストール
```
スクリプトの処理：最新 Release から `VoiceModule-latest.zip` をダウンロード → ホスト停止 → dll/pdb をコピー → `exe.config` を書き込み（既存は上書きしない） → 既定設定を `Extend/` に配置（既存は上書きしない） → モデルをコピー。

### 4. 有効化
`LOLAutomationTools.exe` を起動 → 左メニュー **拡張機能** → **音声** グループ → **音声認識** をオン。 `Space` を押しながら話し、離すとチームチャットに送信されます。

## ダウンロード

| ファイル | 説明 |
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) | コンパイル済みモジュール + 既定設定（約 275 KB） |

## ライセンス

| 内容 | ライセンス |
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
| `Config/`、`README.md` 前半（ホストの元の内容） | © 莲歆、上流に帰属 |
| `LOLAutomationTools.exe` と同梱ライブラリ | © 莲歆、**本リポジトリでは再配布なし** |
| Seraphine（OP.GG launcher の依存） | [GPL-3.0](https://github.com/ZhangBin-000/Seraphine)、**再配布なし** |
| sherpa-onnx ランタイム / ASR モデル | [Apache-2.0](https://github.com/k2-fsa/sherpa-onnx)、**再配布なし** |

## 謝辞
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— ホストプログラム
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— OP.GG ウィンドウの提供元
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— オフライン音声認識
