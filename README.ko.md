<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | **한국어** | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

이 문서는 [중국어 간체 README](./README.md)의 커뮤니티 번역(한국어)입니다. 어색한 부분이 있으면 PR을 환영합니다.

# 소개
**LOLAutomationTools**는 **"리그 오브 레전드"**의 기능 확장 도구입니다. 이는 플레이어가 손을 놓을 수 없거나 일시적으로 떠나야 하는 일부 장면에서 약간의 시간을 절약하기 위해 몇 가지 간단한 클라이언트 작업을 수행하는 데 사용됩니다. 소프트웨어는 플레이어의 게임 이해와 게임 플레이를 크게 방해하지 않으므로 일부 기능은 여전히 ​​수동으로 구성해야 합니다(예: 챔피언 룬 구성). 너무 많은 구속은 사람들을 무감각하게 만들고 게임 자체의 재미를 잃게 만듭니다. 조화로운 환경을 만들기 위해 적극적이고 즐겁게 놀아요.

# 기능
- 자동 픽
  - 사전 픽
- 자동 밴
  - 팀 선택 무시
  - 그룹 비활성화 모드
- 랜덤 픽
- 픽/밴 떠남 방지
- 자동 수락
  - 게임 수락 지연
- 방 생성
- 매칭 시작
  - 경기 시간 초과 감지
- 교환
  - 무작위 모드에서 챔피언 교체
    - 아니면 다른 플레이어가 챔피언을 바꾸는 것을 수동적으로 받아들이세요.
    - 선택되지 않은 챔피언 교체 거부
  - 징조 모드 전환 선택
    - 또는 다른 플레이어의 포지션 교환 선택을 수동적으로 수신합니다.
    - 미리 선택되지 않은 비트 스왑 거부
  - 모집 모드 스왑 플로어
    - 아니면 다른 플레이어가 플로어를 바꾸는 것을 수동적으로 수락하세요.
    - 구성되지 않은 층 교환 거부
- 칭찬 페이지 건너뛰기
- 잠금 해제 페이지 건너뛰기
- 채팅 자동 응답
  - 자리를 비운 동안 친구의 메시지에 답장하기
  - 자리를 비운 동안 게임 초대에 응답하기
    - 나갈 때 게임 초대 거절
- 보조 창
  - 엔터테인먼트 모드 챔피언 밸런스 BUFF 표시
  - 룬 자동 적용
  - 룬 오류 수정
  - 챔피언 독립적 구성
- 게임 자동 종료
- 자동 재접속
- 자동으로 패스 보상 받기(Teamfight Tactics 포함)
- 친구 요청 처리
  - 친구 일괄 삭제
- 맞춤형 경력
  - 경력 배경
  - 소환사 아바타
  - 클라이언트 상태
  - 상태 서명
  - 이름 조각
  - 챔피언 성취 포인트
  - 메달 착용 지우기
- 기능키 차단
- 쿼리 기록
  - 결과 보내기
  - 게임 내 해킹 탐지
  - 경기를 지켜보는 선수들
  - 경기 후 선수 보고
- 사무실에 전화하세요
- 블랙리스트
- 단축키 설정
- 테마 설정
  - 어두운/밝은 테마
  - 적응형 테마
  - 맞춤 테마
  - 배경 이미지 설정
  - 글꼴 사용자 정의
- 확장된 기능
  - 자동 카드 선택(카드 마스터)

## 자동 픽
**챔피언 선택** 및 **챔피언 비활성화**를 사용하기 전에 구성 페이지(스위치 항목 뒤의 버튼)에서 편집 작업을 수행해야 합니다.

분기 설정에 추가된 챔피언 아이템은 *사전 선택된 위치*(예: *Qualified* 및 *Extreme Blitz*)가 있는 일부 게임 모드에서만 효과가 있고, 무작위는 *Random Hero* 모드(예: *Arcs*, *Infinite Brawl*, 무작위 구성 페이지가 비활성화된 챔피언 구성에 포함되지 않음)에서만 효과가 있으며 일반적으로 다른 모든 모드에서 유효합니다(이전에 나열된 모드 제외, 이는 사용 사양을 위한 것입니다). 자동 챔피언 선택 시 위에서 아래로 **챔피언 선택** 구성 항목이 선택됨에 따라 챔피언이 선택됩니다.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## 사전 픽
이 기능의 실행 로직은 기본적으로 **챔피언 선택**과 동일합니다. 차이점은 **사전 선택된 챔피언**은 *자격*과 같은 비활성화된 스테이지가 있는 모드와 비활성화된 챔피언이 필요한 일부 엔터테인먼트 모드에서만 적용된다는 것입니다.

## 자동 밴
**Disable Hero** 구성 페이지는 기본적으로 **Select Hero** 구성 페이지와 동일합니다. 오른쪽 상단에는 모드를 전환하는 버튼만 있습니다. 버튼을 클릭하면 비활성화 모드로 전환됩니다.

*일반 금지 모드*: 이 모드의 작동 논리는 **챔피언 선택** 구성 페이지와 일치합니다. 챔피언 자동 금지 실행 시 비활성화된 챔피언이 구성되어 있지 않으면 금지 단계의 남은 시간 0초 후에 해당 플레이어가 금지됩니다.

*그룹 비활성화 모드*: 구성 목록의 항목은 **챔피언 선택** 구성의 해당 챔피언으로 대체됩니다. 아이템 선택 시 왼쪽의 히어로 아이템을 더블클릭하면 해당 히어로의 **비활성화 그룹**에 추가됩니다. 챔피언 자동 비활성화 시 **챔피언 선택**의 구성 항목 순서를 따릅니다. 모든 **챔피언 선택** 구성 중 **비활성화 그룹**에 비활성화할 챔피언이 없으면 일반 금지 모드의 논리에 따라 비활성화됩니다.

>*팀원 사전 선택 무시*가 활성화된 경우 자동 챔피언 금지를 수행할 때 팀 사전 선택 감지가 건너뜁니다. 이 옵션을 활성화하는 것은 권장되지 않습니다.

## 자동 수락
일치된 후 자동으로 일치를 수락합니다.

>*일치 수락 지연* 옵션이 활성화되면 **일치 수락**은 수락 카운트다운의 마지막 초가 남았을 때만 자동으로 일치를 수락합니다.

## 방 생성
**Create Match** 버튼을 통해 수동으로 매치를 생성하거나 이 스위치를 켜서 자동으로 매치를 생성할 수 있습니다.

>*자동으로 게임 만들기* *추가 설정*에서 만들고 싶은 게임 모드를 선택해야 합니다. 이 옵션은 구성에 저장되지 않습니다.

## 매칭 시작
일치하는 항목을 자동으로 검색합니다. 이는 귀하가 매치 모드 방에 있고 귀하가 팀 소유자(호스트)일 때만 적용됩니다.

>*시간 초과 감지* 옵션이 활성화된 경우 대기열 추정치가 지정된 간격을 초과하면 일치 대기열에서 일치 항목이 자동으로 다시 검색됩니다.

## 칭찬을 건너뛰다
게임이 끝나면 팀원 칭찬 페이지를 건너뜁니다.

## 정산 건너뛰기
게임 종료 시 정산 대기(원 안에 검은색 화면 로딩)나 경기 후 정산 페이지를 건너뛰고 게임 모드 룸으로 돌아갑니다.

## 교환
메인 스위치 항목과 3개의 독립적인 스위치 항목이 포함되어 있으며, 다른 설정도 수행해야 합니다. **교환 기능** 추가 설정에서는 무작위 챔피언 모드에서 팀원과 챔피언을 교환할지, 모집 모드에서 플로어(챔피언이 선택되는 순서)와 미리 선택된 슬롯을 팀원과 교환할지를 설정합니다.

*챔피언 교체 및 포지션 교체 설정은 비교적 간단하므로 여기서는 자세히 설명하지 않겠습니다. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

**교환층**의 **추가 설정**에서는 교환 순서(즉, 층수)와 교환 모드를 설정할 수 있습니다.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*교환 모드*:
- 대상 순서만: 지정된 *순서*와 일치하는 팀원의 요청을 수락합니다.
- 대상 우선순위 포함: 지정된 *순서* 이하인 팀원의 요청을 수락합니다.
- 목표가 있는 연기 명령: 지정된 *순서* 이상인 팀원의 요청을 수락합니다.
- 대상 순서에 따른 범위: *순서* ≤ (*지정된 순서* - *범위*) 및 *순서* ≥ (*지정된 순서* + *범위*)인 팀원의 요청을 수락합니다.

또한 **기타 설정**에는 2가지 거부 교환 옵션이 있습니다. 이 두 가지 옵션을 활성화하면 팀원이 챔피언 교환을 요청하거나 결정된 조건에 맞지 않는 포지션을 선택할 경우 자동으로 교환 요청이 거부됩니다. **그렇지 않으면** 아무 조치도 취하지 않습니다. 교환 수락 여부를 결정할 수 있습니다.

## 픽/밴 떠남 방지
활성화되면 BP 단계의 마지막 순간에 **챔피언 선택** 또는 **챔피언 비활성화**가 실행됩니다.

>*기능 설정 페이지*에서 **선택한 챔피언 금지 반귀환** 기능의 모드 설정을 변경할 수 있습니다.

## 자리 비움 응답
이 스위치 항목은 메인 스위치이므로 다른 설정을 해야 합니다. **더 보기** 구성 페이지에서 나갈 때 친구 메시지나 게임 초대에 자동으로 응답할지 여부를 설정하고(기본적으로 활성화되어 있음) 응답의 텍스트 내용을 설정합니다.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## 보조 창
활성화하면 일부 클라이언트 단계 중에 **추가 창**이 표시됩니다. 또한 이 스위치 뒤에 있는 버튼을 클릭하면 **추가 창**의 **구성 페이지**로 들어갈 수 있으며, 여기에서 현재 사용 가능한 엔터테인먼트 모드에서 챔피언의 **밸런스 속성**(있는 경우)을 볼 수도 있고, 각 모드에서 사용할 수 있는 룬 구성 및 클라이언트 독립적 구성을 구성할 수도 있습니다.

**추가 창** 구성 페이지</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>**룬 구성 페이지**에서 챔피언의 룬 구성을 추가하거나 업데이트하려면 게임 클라이언트의 **컬렉션 - 룬**에서 룬 페이지를 선택하고 편집 및 저장한 후 오른쪽 상단에서 소환사 스킬을 변경하고 **룬 구성 항목**에서 **구성 추가** 버튼을 누르거나 **룬 구성 항목**에서 *현재 게임 구성을 이 구성으로 업데이트* 버튼을 눌러 업데이트해야 룬 구성을 추가하거나 업데이트할 수 있습니다.

**추가 창**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## 게임 자동 종료
간단하고 직관적이며, 게임이 끝날 때 크리스탈 엔딩 애니메이션이 재생되면 게임 프로세스가 자동으로 종료됩니다.

## 자동 재접속
게임을 다시 연결해야 할 때 다시 연결을 시도하세요.

## 자동 카드 선택(확장)
현재 게임 내 챔피언이 카드 마스터일 때 Z/X/C 키를 누르면 파란색/빨간색/노란색 카드가 자동으로 선택됩니다.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>이 기능은 그래픽 처리 및 키보드 시뮬레이션을 사용하여 구현됩니다. 일반적으로 사용되는 두 가지 해상도(1920x1080/2560x1440)만 테스트합니다. 다른 해상도는 자체 구성 없이는 정상적으로 사용할 수 없습니다(특히 16:9 스케일링 비율 이외의 해상도). 감지는 특정 필터 범위를 허용하지만 특정 감지가 무효화되는 것을 방지하려면 이 기능을 사용할 때 필터를 켜지 않는 것이 좋습니다.

---

# 확장 모듈(서드파티)

>이 섹션에 설명된 내용은 호스트 작성자가 아닌 Tudorose가 관리합니다. `LOLAutomationTools` 호스트와 원래 구성(`Config/`)은 © Lianxin의 소유이며 이 저장소는 이를 수정하지 않습니다.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## 모듈 목록

|기준 치수|한 문장 설명|세부|
|---|---|---|
| **VoiceModule** |단축키를 길게 눌러 말하면, 로컬 인식 후 게임 채팅으로 텍스트가 전송됩니다.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Seraphine의 OP.GG 레코드 창을 "확장 기능" 페이지에 접목| [opgg-launcher/README.md](opgg-launcher/README.md) |

## 빠른 시작

### 1. 호스트 준비
[업스트림 릴리스 페이지](https://github.com/Seraph1ne/LOLAutomationTools/releases)에서 `LOLAutomationTools`(≥ 2.9.801)을 다운로드하고 임의의 디렉터리에 압축을 푼 다음 아래 `<宿主目录>`로 기록됩니다.
이 저장소는 호스트 프로그램을 **배포하지 않습니다**.

### 2. 음성 모델 다운로드
VoiceModule에는 sherpa-onnx 형식(약 254MB)의 ASR 모델이 필요합니다. 이 저장소는 모델을 **배포하지 않습니다**. 다운로드 주소 및 디렉토리 레이아웃은 [voice-module/README.md → 모델 다운로드](voice-module/README.md#模型下载)를 참조하세요.

### 3. 원클릭 설치
이 웨어하우스의 루트 디렉터리에서 (PowerShell)을 실행합니다.
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
옵션:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
스크립트는 자동으로 다음을 수행합니다. `VoiceModule-latest.zip` 릴리스 다운로드 → 호스트 중지 → dll/pdb 복사 → `exe.config` 쓰기(덮어쓰지 않고 존재함) → 기본 구성을 `Extend/`에 배치(덮어쓰지 않고 이미 존재함) → 모델 복사.

### 4. 활성화
`LOLAutomationTools.exe` 실행 → 왼쪽 **확장 기능** → **음성** 그룹화 → **음성 to 텍스트** 스위치를 켜세요. 말하려면 `空格`을 길게 누르고, 팀 채팅으로 보내려면 손을 떼세요.

## 다운로드

|문서|설명하다|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |컴파일된 모듈 + 기본 구성(~275KB)|

## 라이선스

|콘텐츠|특허|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` 전반전(진행자 오리지널 콘텐츠)|© Lianxin, Upstream 소유|
|`LOLAutomationTools.exe` 및 관련 라이브러리|© Lian Xin, **이 저장소에서는 배포되지 않음**|
|Seraphine(OP.GG 런처 종속성)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **이 저장소에는 배포되지 않음**|
|sherpa-onnx 런타임/ASR 모델|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **이 저장소에는 배포되지 않음**|

## 감사의 말
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— 호스트 프로그램
- [장빈-000/세라핀](https://github.com/ZhangBin-000/Seraphine) —— OP.GG 윈도우 소스
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— 오프라인 음성 인식

