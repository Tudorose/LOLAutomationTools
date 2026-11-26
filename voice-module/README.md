# VoiceModule — 本地语音转文字模块（LOLAutomationTools 扩展）

> 第三方扩展，与宿主 `LOLAutomationTools`（© 莲歆）无关联。宿主请自行从其[官方发布页](https://github.com/Seraph1ne/LOLAutomationTools)获取。

按住快捷键说话，松开后**本地**识别（不上传任何音频）并把文字发送到游戏聊天框。附带敏感词过滤、替换规则、OP.GG 一键唤出等扩展。

## 功能

| 功能 | 说明 |
|---|---|
| 按键说话 | 默认 `空格`，设置页可改；支持按住 / 切换两种模式 |
| 本地识别 | sherpa-onnx + SenseVoice（int8），支持中/英/日/韩/粤 |
| 发送到游戏 | 队内 / 全员，IME 解除注入，端到端约 350–400 ms |
| 敏感词过滤 | Aho-Corasick，25,307 词，命中替换为 `*`，可关闭 |
| 替换规则 | 应用内编辑，按键长度降序匹配（避免短词抢匹配）|
| OP.GG 唤出 | 选人阶段自动弹出 / 手动按钮（需另装 [opgg-launcher](../opgg-launcher/)）|
| 宿主看门狗 | 加载页卡死自动重试、配置实时保存 |

## 安装

### 前置
1. **LOLAutomationTools** ≥ 2.9.801（从上游发布页下载并解压到任意目录，下称 `<宿主目录>`）
2. **.NET Framework 4.8**（Win10 1903+ 自带）
3. **ASR 模型**（见下节，仓库不分发）

### 模型下载
从 sherpa-onnx 官方发布下载 `sense-voice-funasr-nano`（int8 量化，约 254 MB）：

> https://github.com/k2-fsa/sherpa-onnx/releases/tag/asr-models  → 找 `sherpa-onnx-sense-voice-funasr-nano-int8-2025-08-25.tar.bz2`

解压后得到：
```
<宿主目录>/Models/sense-voice-funasr-nano/
├─ model.int8.onnx
├─ silero_vad_v5.onnx      ← VAD 模型（如压缩包内没有，从 sherpa-onnx silero_vad 发布单独下载）
└─ tokens.txt
```

> 其他含 `tokens.txt` 的 sherpa-onnx 模型也可用，放进 `Models/<名字>/` 后在"更多 → 识别模型"中选择。

### 方式一：脚本安装（推荐）
```powershell
# 在本仓库根目录执行；-ModelDir 指向你解压好的模型目录
.\scripts\install.ps1 -HostDir D:\LOLAT -ModelDir D:\下载\sense-voice-funasr-nano
```
脚本会：复制 `VoiceModule.dll`/`.pdb` → 写入 `LOLAutomationTools.exe.config`（已存在则不动）→ 把默认配置放进 `Extend/`（已存在则不动）→ 复制模型。

### 方式二：手动安装
1. 从 [Releases](https://github.com/Tudorose/LOLAutomationTools/releases) 下载 `VoiceModule-x.x.x.x.zip`
2. 解压 `VoiceModule.dll` `VoiceModule.pdb` `LOLAutomationTools.exe.config` 到 `<宿主目录>`
3. 把 `voice-module/` 下三个文件放到宿主配置目录的 `Extend/`（通常 `%USERPROFILE%\Documents\LOLAutomationTools\DATA\Config\Extend`）
4. 模型放到 `<宿主目录>\Models\sense-voice-funasr-nano\`

## 使用
启动 `LOLAutomationTools.exe` → 左侧"扩展功能" → "语音"分组 → 打开"语音转文字"开关（首次加载模型约数秒）。
"更多"展开快捷键 / 识别模型 / 收音设备；"设置"进入详细设置页。

## 配置文件 `Extend/Voice.json`
| 字段 | 默认 | 说明 |
|---|---|---|
| `Hotkey` | 32 | Win32 虚拟键码，32=空格 |
| `ModelPath` | `Models\sense-voice-funasr-nano` | 相对宿主目录或绝对路径 |
| `Language` | zh | zh / en / ja / ko / yue |
| `Target` | team | team（队内）/ all（全员）|
| `AutoSend` | true | 识别后自动发送；false 则只填入输入框 |
| `UseCensorWords` | false | 敏感词过滤 |
| `UseItn` | true | 数字格式转换（"二零二五"→"2025"）|
| `VadThreshold / VadMinSpeech / VadMinSilence` | 0.5 / 0.3 / 1.5 | VAD 参数 |

`rules.json`：`[{"from":"操","to":"测"}, ...]`；`sensitive_words.txt`：每行一个词。


## 源码
本仓库为分发仓库，不含源码。已编译的 `VoiceModule.dll` 见 [Releases](https://github.com/Tudorose/LOLAutomationTools/releases)。

## 文件结构
```
voice-module/
├─ Voice.json                      默认配置（首次安装写入 Extend/）
├─ rules.json                      默认替换规则
├─ sensitive_words.txt             25,307 词敏感词库
├─ LOLAutomationTools.exe.config   模块加载声明
└─ README.md
```

## 已知问题
- 宿主处于 ChampSelect 时启动，偶尔卡在"加载页面"（宿主自身问题，模块内置看门狗会自动重试）
- 聊天框注入依赖 IME 解除，若游戏输入法配置特殊可能失效，日志 `[send]` 可定位

## 许可
本模块以 MIT 发布（见 [../LICENSE](../LICENSE)）。宿主、sherpa-onnx、模型各自的许可归其作者。
