<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | **Tiếng Việt** | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Đây là bản dịch cộng đồng (Tiếng Việt) của [README tiếng Trung giản thể](./README.md). Rất hoan nghênh PR sửa lỗi.

# Giới thiệu
**LOLAutomationTools** là công cụ mở rộng chức năng cho **"Liên Minh Huyền Thoại"**; nó được sử dụng để giúp người chơi thực hiện một số thao tác đơn giản với khách hàng nhằm tiết kiệm một khoảng thời gian nhỏ trong một số cảnh mà họ không thể rảnh tay hoặc cần phải rời đi tạm thời; phần mềm sẽ không can thiệp quá nhiều vào sự hiểu biết và cách chơi game của người chơi nên một số chức năng vẫn cần phải cấu hình thủ công (chẳng hạn như cấu hình rune anh hùng). Quá kiềm chế sẽ khiến người ta tê liệt và mất đi niềm vui của trò chơi; vui chơi tích cực, vui vẻ để xây dựng môi trường hài hòa.

# Tính năng
- Tự động chọn tướng
  - Chọn trước
- Tự động cấm tướng
  - Bỏ qua lựa chọn đội
  - Chế độ vô hiệu hóa nhóm
- Chọn ngẫu nhiên
- Chống bỏ chọn/cấm
- Tự động chấp nhận
  - Chậm trễ trong việc chấp nhận trò chơi
- Tạo phòng
- Tìm trận
  - Phát hiện thời gian chờ trận đấu
- Trao đổi
  - Hoán đổi anh hùng ở chế độ ngẫu nhiên
    - Hoặc chỉ thụ động chấp nhận người chơi khác đổi tướng
    - Từ chối hoán đổi anh hùng không được chọn
  - Lựa chọn hoán đổi chế độ Điềm báo
    - Hoặc thụ động nhận các lựa chọn trao đổi vị trí của người chơi khác
    - Từ chối hoán đổi bit không được chọn trước
  - Chế độ tuyển dụng hoán đổi tầng
    - Hoặc chỉ thụ động chấp nhận người chơi khác chuyển sàn
    - Từ chối trao đổi sàn không được cấu hình
- Bỏ qua trang tôn vinh
- Bỏ qua trang mở khóa
- Tự động trả lời chat
  - Trả lời tin nhắn của một người bạn khi đi vắng
  - Trả lời lời mời chơi game khi đi xa
    - Từ chối lời mời chơi game khi rời đi
- Cửa sổ phụ trợ
  - Chế độ giải trí cân bằng hero hiển thị BUFF
  - Tự động áp dụng rune
  - Sửa lỗi rune
  - Cấu hình độc lập anh hùng
- Tự động đóng game
- Tự động kết nối lại
- Tự động nhận phần thưởng vượt qua (bao gồm Đấu Trường Chân Lý)
- Xử lý yêu cầu kết bạn
  - Xóa bạn bè hàng loạt
- sự nghiệp cá nhân hóa
  - Bối cảnh nghề nghiệp
  - Hình đại diện triệu hồi
  - trạng thái khách hàng
  - chữ ký trạng thái
  - mảnh tên
  - Điểm thành tích anh hùng
  - Rõ ràng đeo huy chương
- Chặn phím chức năng
- Ghi lại truy vấn
  - Gửi kết quả
  - Phát hiện hack trong game
  - Người chơi đang theo dõi trận đấu
  - Người chơi báo cáo sau trận đấu
- Gọi đến văn phòng
- danh sách đen
- Cài đặt phím tắt
- Cài đặt chủ đề
  - Chủ đề tối/sáng
  - Chủ đề thích ứng
  - Chủ đề tùy chỉnh
  - Cài đặt hình nền
  - Tùy chỉnh phông chữ
- Chức năng mở rộng
  - Chọn thẻ tự động (Card Master)

## Tự động chọn tướng
Trước khi sử dụng **Select Hero** và **Disable Hero**, bạn cần thực hiện các thao tác chỉnh sửa trên trang cấu hình (nút phía sau mục chuyển đổi).

Các vật phẩm anh hùng được thêm vào trong cài đặt nhánh chỉ có hiệu lực ở một số chế độ trò chơi có *vị trí được chọn trước* (chẳng hạn như *Đủ tiêu chuẩn* và *Cực nhanh*), ngẫu nhiên chỉ có hiệu lực trong các chế độ *Anh hùng ngẫu nhiên* (chẳng hạn như *Arcs*, *Infinite Brawl*, trang cấu hình ngẫu nhiên không được bao gồm trong cấu hình anh hùng bị vô hiệu hóa) và thường hợp lệ ở tất cả các chế độ khác (không bao gồm các chế độ được liệt kê trước đó, điều này là vì mục đích sử dụng). Khi thực hiện chọn tướng tự động, tướng sẽ được chọn theo **Select Heroes** Các mục cấu hình được chọn từ trên xuống dưới.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Chọn trước
Logic thực thi của chức năng này về cơ bản giống như **Chọn anh hùng**. Điểm khác biệt là **Anh hùng được chọn trước** sẽ chỉ có hiệu lực ở các chế độ có màn chơi bị vô hiệu hóa, chẳng hạn như *Đủ điều kiện* và một số chế độ giải trí yêu cầu anh hùng bị khuyết tật.

## Tự động cấm tướng
Trang cấu hình **Disable Hero** về cơ bản giống với trang cấu hình **Select Hero**. Chỉ có nút chuyển đổi chế độ ở góc trên bên phải. Bấm vào nút để chuyển sang chế độ bị vô hiệu hóa.

*Chế độ cấm thông thường*: Logic hoạt động của chế độ này phù hợp với trang cấu hình của **Chọn anh hùng**. Khi thực hiện lệnh cấm tướng tự động, nếu không có tướng bị vô hiệu hóa nào được cấu hình, người chơi sẽ bị cấm trong 0 giây của thời gian còn lại của giai đoạn Cấm.

*Chế độ vô hiệu hóa nhóm*: Các vật phẩm trong danh sách cấu hình sẽ được thay thế bằng các anh hùng tương ứng trong cấu hình **Chọn anh hùng**. Khi chọn một vật phẩm, hãy nhấp đúp vào vật phẩm anh hùng ở bên trái để thêm nó vào **Nhóm vô hiệu hóa** của anh hùng. Khi tự động vô hiệu hóa anh hùng, thứ tự các mục cấu hình của **Chọn anh hùng** sẽ được tuân theo. Nếu không có anh hùng nào bị vô hiệu hóa trong **Nhóm vô hiệu** của tất cả các cấu hình **Chọn anh hùng**, họ sẽ bị vô hiệu hóa theo logic của chế độ cấm thông thường.

>Nếu *Bỏ qua lựa chọn trước đồng đội* được bật, việc phát hiện lựa chọn trước của đội sẽ bị bỏ qua khi thực hiện lệnh cấm anh hùng tự động. Không nên kích hoạt tùy chọn này.

## Tự động chấp nhận
Tự động chấp nhận trận đấu sau khi được khớp.

>Khi tùy chọn *Trì hoãn chấp nhận kết quả phù hợp* được bật, **Chấp nhận kết quả phù hợp** sẽ chỉ tự động chấp nhận kết quả phù hợp khi còn lại giây cuối cùng của quá trình đếm ngược chấp nhận.

## Tạo phòng
Bạn có thể tạo trận đấu theo cách thủ công thông qua nút **Tạo trận đấu** hoặc bật công tắc này để tạo trận đấu tự động.

>*Tự động tạo trò chơi* Bạn cần chọn chế độ trò chơi bạn muốn tạo trong *Cài đặt khác*, tùy chọn này sẽ không được lưu vào cấu hình.

## Tìm trận
Tự động tìm kiếm các kết quả phù hợp. Điều này sẽ chỉ có hiệu lực khi bạn ở trong phòng chế độ trận đấu và bạn là chủ sở hữu đội (chủ nhà).

>Nếu tùy chọn *Phát hiện thời gian chờ* được bật, các kết quả trùng khớp sẽ tự động được tìm kiếm lại trong hàng đợi trận đấu nếu ước tính hàng đợi vượt quá khoảng thời gian đã chỉ định.

## bỏ qua lời khen
Bỏ qua trang khen ngợi đồng đội ở cuối game.

## Bỏ qua kết thúc trận
Bỏ qua việc chờ giải quyết ở cuối trò chơi (tải màn hình đen theo vòng tròn) hoặc trang giải quyết sau trận đấu và quay lại phòng chế độ trò chơi.

## Trao đổi
Chứa mục công tắc chính và ba mục công tắc độc lập, bạn cũng cần thực hiện các cài đặt khác. Trong cài đặt thêm **Chức năng trao đổi**, hãy đặt xem có trao đổi anh hùng với đồng đội ở chế độ anh hùng ngẫu nhiên hay trao đổi tầng (thứ tự chọn anh hùng) và các vị trí được chọn trước với đồng đội trong chế độ chiêu mộ.

*Việc thiết lập hoán đổi tướng và hoán đổi vị trí tương đối đơn giản nên tôi sẽ không đi sâu vào chi tiết ở đây. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

Trong **Cài đặt khác** của **Sàn trao đổi**, bạn có thể đặt thứ tự trao đổi (tức là sàn) và chế độ trao đổi.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Chế độ trao đổi*:
- Chỉ thứ tự mục tiêu: Chấp nhận yêu cầu từ đồng đội phù hợp với *thứ tự* được chỉ định.
- Chứa mức độ ưu tiên của mục tiêu: Chấp nhận yêu cầu từ đồng đội ≤ *mệnh lệnh* được chỉ định.
- Lệnh trì hoãn có mục tiêu: Chấp nhận yêu cầu từ đồng đội ≥ *mệnh lệnh* được chỉ định.
- Phạm vi dựa trên thứ tự mục tiêu: Chấp nhận yêu cầu từ đồng đội với *thứ tự* ≤ (*thứ tự được chỉ định* - *phạm vi*) và *thứ tự* ≥ (*thứ tự được chỉ định* + *phạm vi*).

Ngoài ra, có hai tùy chọn trao đổi từ chối trong **Cài đặt khác**. Khi cả hai điều này được bật,** nếu đồng đội yêu cầu trao đổi tướng với bạn hoặc chọn một vị trí không nằm trong các điều kiện đã xác định, yêu cầu trao đổi sẽ tự động bị từ chối. **Nếu không** sẽ không có hành động nào được thực hiện. Bạn có thể quyết định có chấp nhận trao đổi hay không.

## Chống bỏ chọn/cấm
Khi tính năng này được bật, **Chọn Anh hùng** hoặc **Tắt Anh hùng** sẽ được thực thi ở giây cuối cùng của giai đoạn BP.

>Bạn có thể thay đổi cài đặt chế độ của chức năng **Cấm trở lại các anh hùng được chọn** trên *Trang cài đặt chức năng*.

## Trả lời khi vắng mặt
Mục công tắc này là công tắc chính, bạn cần thực hiện các cài đặt khác. Trong trang cấu hình **Thêm**, đặt xem có tự động trả lời tin nhắn bạn bè hoặc lời mời chơi game khi rời đi hay không (những tính năng này được bật theo mặc định) và đặt nội dung văn bản của câu trả lời.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Cửa sổ phụ trợ
Khi được bật, **cửa sổ bổ sung** sẽ được hiển thị trong một số giai đoạn của máy khách. Ngoài ra, bạn có thể nhấp vào nút phía sau công tắc này để vào **Trang cấu hình** của **Cửa sổ bổ sung**, tại đây bạn cũng có thể xem **Thuộc tính cân bằng** (nếu có) của anh hùng trong chế độ giải trí hiện có và định cấu hình cấu hình ngọc và cấu hình độc lập với máy khách có sẵn trong mỗi chế độ.

**Cửa sổ bổ sung** Trang cấu hình</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Nếu bạn muốn thêm hoặc cập nhật cấu hình rune của anh hùng trên **Trang cấu hình rune**, bạn cần chọn một trang rune trong **Bộ sưu tập - Runes** trong ứng dụng khách trò chơi, chỉnh sửa và lưu nó, thay đổi kỹ năng triệu hồi từ góc trên bên phải và nhấn nút **Thêm cấu hình** hoặc nút *Cập nhật cấu hình trò chơi hiện tại lên cấu hình này* trong **Mục cấu hình Rune** để cập nhật để thêm hoặc cập nhật cấu hình rune.

**Cửa sổ bổ sung**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Tự động đóng game
Đơn giản và dễ hiểu, quá trình trò chơi sẽ tự động đóng khi hoạt ảnh kết thúc pha lê được phát ở cuối trò chơi.

## Tự động kết nối lại
Cố gắng kết nối lại khi trò chơi cần kết nối lại.

## Chọn bài tự động (mở rộng)
Khi anh hùng hiện tại trong trò chơi là chủ thẻ, hãy sử dụng các phím Z/X/C để tự động chọn thẻ xanh/đỏ/vàng.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Chức năng này được thực hiện bằng cách sử dụng xử lý đồ họa và mô phỏng bàn phím. Nó chỉ kiểm tra hai độ phân giải thường được sử dụng (1920x1080/2560x1440). Các độ phân giải khác không thể được sử dụng bình thường nếu không tự cấu hình (đặc biệt là các độ phân giải khác với tỷ lệ tỷ lệ 16:9). Việc phát hiện cho phép một phạm vi bộ lọc nhất định, nhưng không nên bật bộ lọc khi sử dụng chức năng này để tránh vô hiệu hóa một phạm vi phát hiện nhất định.

---

# Tiện ích mở rộng (bên thứ ba)

>Nội dung được mô tả trong phần này được duy trì bởi Tudorose chứ không phải tác giả chủ trì. Máy chủ `LOLAutomationTools` và cấu hình ban đầu của nó (`Config/`) thuộc quyền sở hữu của © Lianxin và kho lưu trữ này không thực hiện bất kỳ sửa đổi nào đối với chúng.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Các mô-đun

|mô-đun|Một câu giải thích|Chi tiết|
|---|---|---|
| **VoiceModule** |Nhấn và giữ phím tắt để nói và văn bản sẽ được gửi đến trò chuyện trong trò chơi sau khi được nhận dạng cục bộ.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Cửa sổ bản ghi OP.GG của Graft Seraphine tới trang "Chức năng mở rộng"| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Bắt đầu nhanh

### 1. Chuẩn bị chủ nhà
Tải xuống `LOLAutomationTools` ( ≥ 2.9.801) từ [trang phát hành ngược dòng] (https://github.com/Seraph1ne/LOLAutomationTools/releases) và giải nén nó vào bất kỳ thư mục nào, thư mục này sẽ được ghi là `<宿主目录>` bên dưới.
Kho lưu trữ này **không phân phối** các chương trình lưu trữ.

### 2. Tải mẫu giọng nói
VoiceModule yêu cầu mô hình ASR ở định dạng sherpa-onnx (khoảng 254 MB). Kho lưu trữ này **không phân phối** mô hình. Để biết địa chỉ tải xuống và bố cục thư mục, hãy xem [voice-module/README.md → Tải xuống mô hình](voice-module/README.md#模型下载).

### 3. Cài đặt bằng một cú nhấp chuột
Thực thi (PowerShell) trong thư mục gốc của kho này:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Tùy chọn:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Tập lệnh sẽ tự động: Tải xuống bản phát hành `VoiceModule-latest.zip` → Dừng máy chủ → Sao chép dll/pdb → Viết `exe.config` (tồn tại mà không ghi đè) → Đặt cấu hình mặc định thành `Extend/` (đã tồn tại mà không ghi đè) → Sao chép mô hình.

### 4. Kích hoạt
Khởi chạy `LOLAutomationTools.exe` → **Chức năng mở rộng** ở bên trái → **Giọng nói** Nhóm → Bật công tắc **Giọng nói thành văn bản**. Nhấn và giữ `空格` để nói, thả ra để gửi đến nhóm trò chuyện.

## Tải xuống

|tài liệu|minh họa|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Mô-đun đã biên dịch + cấu hình mặc định (~275 KB)|

## Giấy phép

|nội dung|giấy phép|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Nửa đầu (lưu trữ nội dung gốc)|© Lian Xin, thuộc sở hữu của Upstream|
|`LOLAutomationTools.exe` và các thư viện đi kèm của nó|© Lian Xin, **không được phân phối trong kho này**|
|Seraphine (phụ thuộc trình khởi chạy OP.GG)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **không được phân phối trong kho lưu trữ này**|
|mô hình thời gian chạy sherpa-onnx/ASR|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **không được phân phối trong kho lưu trữ này**|

## Lời cảm ơn
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Chương trình chủ trì
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— Nguồn cửa sổ OP.GG
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Nhận dạng giọng nói ngoại tuyến

