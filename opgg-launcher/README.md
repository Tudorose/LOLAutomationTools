# OP.GG launcher

[![License: MIT](https://img.shields.io/badge/launcher-MIT-yellow.svg)](../LICENSE)
[![Depends: Seraphine](https://img.shields.io/badge/depends%20on-Seraphine%20(GPL--3.0)-blue)](https://github.com/ZhangBin-000/Seraphine)

> 把 [Seraphine](https://github.com/ZhangBin-000/Seraphine) 的 OP.GG 战绩窗口"嫁接"到 `LOLAutomationTools` 的"扩展功能"页。
> 本仓库只提供 `launcher.py`，**不分发** Seraphine 本体。

## 它做什么
- **选人阶段自动弹出** OP.GG 战绩 / 出装窗口（可在扩展页勾选开关）
- **手动按钮** 唤出 / 隐藏
- **生命周期绑定**：宿主退出时随之退出（Job Object）；关窗不退出进程
- **配置热重载**：宿主改了开关，launcher 立即生效（`_reloadCfg()`）
- **自动重连**：LOL 客户端重启后自动重新绑定 LCU 端口 / token

## 安装
### 前置
- 一份 [Seraphine](https://github.com/ZhangBin-000/Seraphine) 安装（任意版本，只需要它的 Python 运行时和 `app/` 资源）
- 已安装 [VoiceModule](../voice-module/)（它负责在扩展页注入 OP.GG 的复选框和按钮）

### 方式一：脚本
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -WithOpgg -SeraphineDir <Seraphine 目录>
```

### 方式二：手动
1. 把 Seraphine 目录整体复制到 `<宿主目录>\OP.GG\`
2. 用本仓库的 `launcher.py` 覆盖 `OP.GG\launcher.py`

启动方式：`OP.GG\pythonw.exe launcher.py`——宿主启动时会自动拉起，无需手动运行。

## 配置
所有配置都在 `%APPDATA%\Seraphine\config.json`：
| 键 | 说明 |
|---|---|
| `Functions.AutoShowOpgg` | 选人时自动弹出 |
| `Functions.EnableOpggOnTop` | 窗口置顶 |
| `Functions.OpggRegion` / `OpggPosition` / `OpggTier` | 在 OP.GG 窗口内设置 |

> OP.GG 开关的唯一数据源是这个文件；宿主扩展页的复选框只是它的一个写入入口。

## 日志
`OP.GG\_launcher_debug.log`。关键标记：
```
gameStatusChanged: ChampSelect     ← 游戏状态变化
poller status transition: A -> B   ← 轮询器状态切换
SIGNAL lolClientEnded               ← 客户端退出信号
auto press: __showWindow            ← 自动弹出触发
```

## 版本历史
[changelog/](changelog/) 目录保存了 `launcher.py` 的历次修改前备份（v02 – v07），可据此回滚或查看演进。

## 许可
`launcher.py` 以 [MIT](../LICENSE) 发布。
它运行所依赖的 Seraphine 代码与资源遵循 **GPL-3.0**，Seraphine 原作者的 `LICENSE.txt` 保留在 Seraphine 目录中。
随 Seraphine 自带的 `app/common/util.pyc` 有一处修改（窗口定位），详见 [changelog/](changelog/)。
