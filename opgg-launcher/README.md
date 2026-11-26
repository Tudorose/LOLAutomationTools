# OP.GG launcher — 为 LOLAutomationTools 嫁接 Seraphine 的 OP.GG 窗口

> 需要 [Seraphine](https://github.com/ZhangBin-000/Seraphine) 的运行时与资源（GPL-3.0）。本仓库只提供 `launcher.py`，**不分发** Seraphine 本体。

## 它做什么
把 Seraphine 的 OP.GG 战绩/出装窗口，从 Seraphine 主程序里"嫁接"出来，由 LOLAutomationTools 的"扩展功能"页控制：
- 选人阶段自动弹出（可在扩展页勾选开关，状态写在 `%APPDATA%\Seraphine\config.json`）
- 手动按钮唤出 / 隐藏
- 宿主退出时随之退出（Job Object）
- 宿主写入配置后 launcher 热重载（`_reloadCfg()`）

## 安装
1. 安装一份 Seraphine（任意版本，只需要它的运行时和 `app/` 资源）
2. 把 Seraphine 目录整体复制到 `<宿主目录>\OP.GG\`
3. 用本仓库的 `launcher.py` 覆盖 `OP.GG\launcher.py`
4. 安装 VoiceModule（它负责在扩展页注入 OP.GG 复选框和按钮）

或用脚本：
```powershell
.\scripts\install.ps1 -HostDir D:\LOLAT -WithOpgg -SeraphineDir D:\Seraphine
```

启动方式：`OP.GG\pythonw.exe launcher.py`（宿主启动时自动拉起，无需手动）。

## 配置
| 键 | 位置 | 说明 |
|---|---|---|
| `Functions.AutoShowOpgg` | `%APPDATA%\Seraphine\config.json` | 选人时自动弹出 |
| `Functions.EnableOpggOnTop` | 同上 | 窗口置顶 |
| `OpggRegion / OpggPosition / OpggTier` | 同上 | 在 OP.GG 窗口内设置 |

## 日志
`OP.GG\_launcher_debug.log`。关键标记：`gameStatusChanged:`、`poller status transition`、`SIGNAL`。

## 许可
`launcher.py` 以 MIT 发布；它运行所依赖的 Seraphine 代码与资源遵循 **GPL-3.0**，Seraphine 原作者的 `LICENSE.txt` 保留在 Seraphine 目录中。对 Seraphine 的 `app/common/util.pyc` 有一处修改（窗口定位），随附修改说明于 [changelog/](changelog/)。
