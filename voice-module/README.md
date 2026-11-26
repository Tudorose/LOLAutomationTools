# VoiceModule

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](../LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases&label=download)](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip)
[![Host](https://img.shields.io/badge/host-LOLAutomationTools%20%E2%89%A5%202.9.801-blue)](https://github.com/Seraph1ne/LOLAutomationTools)

> 第三方扩展模块，与宿主 `LOLAutomationTools`（© 莲歆）无关联。

按住快捷键说话，松开后在**本地**完成语音识别（音频不出机器），把文字直接发送到游戏聊天框。另带敏感词过滤、替换规则、OP.GG 一键唤出。

## 目录
- [功能](#功能)
- [安装](#安装)
- [使用](#使用)
- [配置](#配置)
- [已知问题](#已知问题)
- [许可](#许可)

## 功能

| 功能 | 说明 |
|---|---|
| 按键说话 | 默认 `空格`，可在设置页修改；支持「按住」与「切换」两种模式 |
| 本地识别 | sherpa-onnx + SenseVoice（int8 量化），支持中 / 英 / 日 / 韩 / 粤 |
| 发送到游戏 | 队内 / 全员；IME 解除注入，端到端约 350–400 ms |
| 敏感词过滤 | Aho-Corasick，25,307 词，命中替换为 `*`，可关闭 |
| 替换规则 | 应用内可视化编辑，按键长度降序匹配，避免短词抢匹配 |
| OP.GG 唤出 | 选人阶段自动弹出 / 手动按钮（需另装 [opgg-launcher](../opgg-launcher/)）|
| 宿主看门狗 | 加载页卡死自动重试、配置实时保存 |

## 安装

### 前置要求
| 依赖 | 版本 / 说明 |
|---|---|
| LOLAutomationTools | ≥ 2.9.801，[上游发布页](https://github.com/Seraph1ne/LOLAutomationTools/releases)，解压到任意目录（下称 `<宿主目录>`）|
| .NET Framework | 4.8（Windows 10 1903+ 自带）|
| ASR 模型 | sherpa-onnx 格式，见[模型下载](#模型下载)，**本仓库不分发** |

### 模型下载
VoiceModule 默认使用 `sense-voice-funasr-nano`（int8，约 254 MB）。从 sherpa-onnx 官方发布页下载：

**https://github.com/k2-fsa/sherpa-onnx/releases/tag/asr-models**

找 `sherpa-onnx-sense-voice-funasr-nano-int8-*.tar.bz2`，解压后得到三个文件，放到：
```
<宿主目录>/Models/sense-voice-funasr-nano/
├─ model.int8.onnx
├─ silero_vad_v5.onnx      ← VAD 模型；若压缩包内没有，从 sherpa-onnx 的 silero_vad 发布单独下载
└─ tokens.txt
```
> 任何带 `tokens.txt` 的 sherpa-onnx 模型都可以用：放进 `Models/<名字>/`，在「更多 → 识别模型」中选择即可。

### 方式一：脚本安装（推荐）
在本仓库根目录执行：
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
脚本会依次：
1. 从 [Releases](https://github.com/Tudorose/LOLAutomationTools/releases/latest) 下载 `VoiceModule-latest.zip`
2. 停止正在运行的宿主（dll 被锁定）
3. 复制 `VoiceModule.dll` / `.pdb` 到 `<宿主目录>`
4. 写入 `LOLAutomationTools.exe.config`（已存在则不动）
5. 把 `Voice.json` / `rules.json` / `sensitive_words.txt` 放进 `Extend/`（已存在则不动）
6. 复制模型到 `<宿主目录>\Models\`

### 方式二：手动安装
1. 下载 [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip)
2. 解压 `VoiceModule.dll`、`VoiceModule.pdb`、`LOLAutomationTools.exe.config` 到 `<宿主目录>`
3. 解压 `Voice.json`、`rules.json`、`sensitive_words.txt` 到宿主配置目录的 `Extend/`（通常 `%USERPROFILE%\Documents\LOLAutomationTools\DATA\Config\Extend`）
4. 模型放到 `<宿主目录>\Models\sense-voice-funasr-nano\`

## 使用
1. 启动 `LOLAutomationTools.exe`
2. 左侧导航 → **扩展功能** → **语音** 分组 → 打开 **语音转文字** 开关（首次加载模型需数秒）
3. 按住 `空格` 说话，松开后自动识别并发送
4. 点 **更多** 展开快捷键 / 识别模型 / 收音设备；点 **设置** 进入详细设置页（整页显示）

## 配置

### `Extend/Voice.json`
| 字段 | 默认 | 说明 |
|---|---|---|
| `Enabled` | true | 功能开关 |
| `Hotkey` | 32 | Win32 虚拟键码，32 = 空格 |
| `ModelPath` | `Models\sense-voice-funasr-nano` | 相对宿主目录或绝对路径 |
| `Language` | zh | zh / en / ja / ko / yue |
| `Target` | team | team（队内）/ all（全员）|
| `AutoSend` | true | 识别后自动发送；false 则只填入输入框 |
| `UseItn` | true | 数字格式转换（"二零二五" → "2025"）|
| `StripPunct` | false | 去除标点 |
| `UseCensorWords` | false | 敏感词过滤开关 |
| `UseVad` | true | VAD 自动断句 |
| `VadThreshold` / `VadMinSpeech` / `VadMinSilence` | 0.5 / 0.3 / 1.5 | VAD 阈值 / 最短语音(s) / 静音判定(s) |
| `NumThreads` | 0 | 推理线程数，0 = 自动 |
| `AsrDebugLog` | false | 识别调试日志 |

### `Extend/rules.json`
```json
[
  { "from": "操", "to": "测" },
  { "from": "狗", "to": "勾" }
]
```
发送前按 `from` 长度降序依次替换。也可在「设置 → 替换规则」面板中增删改，保存即生效。

### `Extend/sensitive_words.txt`
每行一个词，UTF-8。默认词库 25,307 条（含单字条目，较激进），不需要时关闭 `UseCensorWords` 即可。

## 已知问题
- 宿主在 **ChampSelect 阶段启动**时偶尔卡在"加载页面"——宿主自身问题，模块看门狗会自动重试；若持续卡住请重启宿主
- 聊天框注入依赖临时解除 IME 关联；若游戏输入法配置特殊可能失效，查看 `<宿主目录>\VoiceModule.log` 中 `[send]` 行定位

## 许可
本模块以 [MIT](../LICENSE) 发布。宿主程序、sherpa-onnx 运行时与 ASR 模型各自的许可归其作者，均未随本仓库分发。
