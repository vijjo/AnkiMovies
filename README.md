# AnkiMovies

Link video hướng dẫn: https://youtu.be/Y7uIJuKIxO4

## Mục lục

* [Bộ Inception](#bộ-inception)
* [Cài Add-ons](#cài-add-ons)
* [FFmpeg](#ffmpeg)
    * [Win](#win)
    * [Mac](#mac)
* [mpv](#mpv)
    * [Visual Studio Code](#visual-studio-code)
    * [Chỉnh Config](#chỉnh-config)
    * [Persistent properties](#persistent-properties)
* [Turn on Clipboard History](#turn-on-clipboard-history)
* [Chỉnh trong Browse](#chỉnh-trong-browse)
    * [Find and replace](#find-and-replace)
    * [Tạo và sắp xếp lại các fields](#tạo-và-sắp-xếp-lại-các-fields)
    * [Chỉnh size của image trong Editor](#chỉnh-size-của-image-trong-editor)
* [Export to csv](#export-to-csv)
    * [Tạo google translate](#tạo-google-translate)
    * [Tạo IPA](#tạo-ipa)
    * [Tạo hint](#tạo-hint)
* [Phím tắt](#phím-tắt)
    * [Phím tắt Watch Foreign Language Movies with Anki](#phím-tắt-watch-foreign-language-movies-with-anki)
    * [Phím tắt nếu đặt AutoHotkey/Keyboard Maestro](#phím-tắt-nếu-đặt-autohotkey-win-keyboard-maestro-mac)
    * [Chỉnh tốc độ chơi video](#chỉnh-tốc-độ-chơi-video)
    * [Tạo thêm phím tắt ctrl+g](#tạo-thêm-phím-tắt-ctrl-g)
* [AutoHotkey (Win)](#autohotkey)
* [Keyboard-Maestro (Mac)](#keyboard-maestro)



## Bộ Inception

[Link download](https://1drv.ms/u/s!Au96OifgcsxQhvwjeOlMLZ36huYsHA?e=ERFoGK)

Chỉnh Options:
* `New cards/day`: 9999
* `Maximum reviews/day`: 9999

**ĐỪNG** tick
* `Always include question side when replaying audio`

## Cài Add-ons
1. Watch Foreign Language Movies with Anki: https://bit.ly/3xIXl2L
2. Advanced Browser
3. Anki Zoom
4. Batch Editing
5. Edit audios in the external editor
6. Edit Field During Review
7. Review Heatmap

## FFmpeg
### Win
https://www.gyan.dev/ffmpeg/builds/

#### Add to the PATH on Windows 10

Bật `Edit the system environment variables`.

Thêm đường dẫn tới `ffmpeg\bin`.

Hướng dẫn chi tiết:
https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/

### Mac
Bật `Terminal`, dán vào:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Nhấp `Enter`. Đợi chạy xong. dán tiếp:
```
brew install ffmpeg
```
Đợi chạy xong.

## mpv
Anki mới không cần cài!

Nếu dùng Anki cũ, download bản cài tại: https://sourceforge.net/projects/mpv-player-windows/files

Nhớ thêm `mpv` vào trong `Environment Variables` giống `ffmpeg`

### Visual Studio Code
https://code.visualstudio.com

### Chỉnh config

Trong **Win**:
- run `%APPDATA%/mpv`

Nếu không có thư mục `mpv`, chịu khó làm theo bước sau:

* Lên trang này: https://sourceforge.net/projects/mpv-player-windows/files/
* Download bản 64/32 bit xuống, tuỳ win
* Giải nén ra, sửa folder thành `mpv` và di nó ổ `C:\` giống như cài `ffmpeg`. 
* Sau đó cũng chỉnh `Path` trong `Environment Variables` đến cái `C:\mpv` tương tự `ffmpeg`
* Làm vậy xong thì vào trong `%APPDATA%` không có `mpv` thì cứ tạo thư mục đấy ra thôi.

Trong **Mac**:
- mở `Finder` trên menubar chọn `Go > Go to folder...`, gõ: `~/.config/mpv/`

Tạo file `mpv.conf`. Dán vào đấy:
```
sub-visibility=no
sub-auto=fuzzy
slang=eng,en
alang=eng,en
audio-file-auto=fuzzy
ave-position-on-quit=yes
autofit-larger=100%x100%
geometry=50%:50%
```

### Persistent properties
https://github.com/d87/mpv-persist-properties

Chỉnh thêm `speed` dòng:
```
properties = "volume,sub-scale,speed",
```

## Turn on Clipboard History
Nhấp `Win+i` để vào `Settings`, chọn `System > Clipboard`. Bật `Clipboard History` lên.

## Chỉnh Generate Video Cards
`Pad Timings`: đệm thêm thời gian vào đầu/cuối mỗi subtitle

`Gap between Phrases`: gộp các subtitle gần nhau thành một card

`Split Long Phrases`: không gộp các subtitle quá dài

Trong `Model`:

* `movies2anki (add-on)`           – Video + Audio
* `movies2anki (subs2srs)`         – Picture + Audio
* `movies2anki (subs2srs - video)` – Picture + Video + Audio
* `movies2anki (subs2srs - audio)` – Audio


## Chỉnh trong Browse
Advanced Browser: https://ankiweb.net/shared/info/874215009

### Find and replace
```
\{[^}]*\}
```
```
\s*<[^>]*>\s*
```

### Tạo và sắp xếp lại các fields
1. Video
2. Snapshot
3. Expression
4. Meaning
5. IPA
6. Hint
7. Notes
8. Id
9. Audio
10. Source
11. Path
12. Video Sound
13. Audio Sound

### Chỉnh size của image trong Editor

**Mac:**
`/Applications/Anki.app/Contents/Resources/aqt_data/web/css/`

**Win:**
`C:\Program Files\Anki\aqt_data\web\css\`

Chỉnh file `editable.css`, thêm:
```
anki-editable img {
    max-height: 300px;
    max-width: 300px;
}
```
Nếu bị lỗi **You do not have permission to open this file. Please see the owner or the admisnistrator.** thì cả nhà:
* Tắt `Anki` đi.
* Copy file `editable.css` tạm ra chỗ khác, ví dụ ra `Desktop`
* Chỉnh file ở chỗ khác đấy, lưu lại.
* Lấy file `editable.css` đã chỉnh copy ngược lại đè vào file ở thư mục gốc.

Nếu vẫn không được thử: [Cách sửa lỗi you don't have permission](https://quantrimang.com/sua-loi-you-need-permission-to-perform-this-action-trong-windows-10-8-1-va-7-159425)

**CSS Beautifier:**
https://www.freeformatter.com/css-beautifier.html

## Export to csv

Google Sheets:
https://docs.google.com/spreadsheets/u/0/

### Tạo google translate
```
=GOOGLETRANSLATE(C1, "en", "vi")
```
### Tạo IPA
https://tophonetics.com/

### Tạo hint
```
=if(or(exact(C1,""), isblank(C1)), "", if(iserr(FIND(" ", C1)),CONCATENATE(left(C1, 1)," ",REGEXREPLACE(mid(C1, 2, len(C1)-2),"[a-z]", "_ "),right(C1, 1)),REGEXREPLACE(REGEXREPLACE(C1,"\b ", "   "), "\B([a-z])", " _")))
```

## Phím tắt

### Phím tắt Watch Foreign Language Movies with Anki

* `R` – chơi lại
* `Ctrl+R` – chơi lại video
* `Shift+R` - chơi liên tục
---
* `[` - chơi lại card hiện tại và card trước
* `]` - chơi lại card hiện tại và card tiếp theo
* `Shift+[` - gộp card hiện tại và card trước
* `Shift+]` - gộp card hiện tại và card sau
---
* `,` – chỉnh mpv chơi sớm 0.25s
* `.` – chỉnh mpv chơi muộn 0.25s
* `<` (`Shift+,`) – chỉnh mpv kết thúc sớm 0.25s
* `>` (`Shift+.`) – chỉnh mpv kết thúc muộn 0.25s
* `Ctrl+Shift+,` – chỉnh thời gian bắt đầu quay lại mặc định
* `Ctrl+Shift+.` – chỉnh thời gian kết thúc quay lại mặc định
---
Có thể bị trùng với phím trong một video khác mình hướng dẫn tra nhanh `GoldenDict` bằng phím chuột giữa. 
Cả nhà thay phím tắt `GoldenDict` sang phím khác, ví dụ `Ctrl+Shift+/`

### Phím tắt nếu đặt AutoHotkey (Win)/ Keyboard Maestro (Mac)
* `Ctrl + f` – tăng mốc thời gian lên 200ms *(Mac: `Cmd + f`)*
* `Ctrl + d` – giảm mốc thời gian đi 200ms *(Mac: `Cmd + d`)*
* `Ctrl + Win + f` – tăng mốc thời gian lên 100ms *(Mac: `Cmd + Ctrl + f`)*
* `Ctrl + Win + d` – giảm mốc thời gian xuống 100ms *(Mac: `Cmd + Ctrl + d`)*

### Chỉnh tốc độ chơi video
Ngay khi video bật, cửa sổ `mpv` vẫn mở, cả nhà nhấp nhanh:
* `[` – giảm tốc độ 10%
* `]` – tăng tốc độ 10%
* `{` - giảm tốc độ 50%
* `}` – tăng tốc độ 50%
* `Del/Backspace` – quay lại tốc độ ban đầu.

Hướng dẫn thêm, xem [video này](https://youtu.be/We8PxablP00?t=420).

### Tạo thêm phím tắt ctrl g
Sửa trong file của **Edit audios in the external editor**, thêm:
```
action = QAction("Edit audios", aqt.mw)
action.setShortcut(QKeySequence('ctrl+g'))
action.triggered.connect(handleOpenAudios)
menu.addAction(action)
```
Bước dùng Audacity **CHỈ SAU KHI ĐÃ** `Tools > Generate Mobile Cards...` mới làm được nhé. Khi vẫn còn `dòng để chỉnh lại thời gian` sẽ không làm được.

Nếu vẫn không được, cả nhà nên chắc trong Anki phần `Tools > Edit audios in editor > Config` mình đã chọn đường dẫn đúng đến `Audacity.exe`.

## AutoHotkey
Thêm dòng sau trong file .ahk chính
```
#Include AnkiMovies.ahk
```

Download code ở đây [AnkiMovies](https://github.com/hieuvijjo/AnkiMovies), giải nén và copy file `AnkiMovies.ahk` vào cùng thư mục với file .ahk chính.

## Keyboard Maestro
Link: https://www.keyboardmaestro.com/

File macros download tại: [AnkiMovies](https://github.com/hieuvijjo/AnkiMovies)
