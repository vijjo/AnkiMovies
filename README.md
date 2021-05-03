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
    * [Tạo IPA](#tạo-ipa)
    * [Tạo hint](#tạo-hint)
    * [Tạo google translate](#tạo-google-translate)
* [Phím tắt](#phím-tắt)
    * [Phím tắt Watch Foreign Language Movies with Anki](#phím-tắt-watch-foreign-language-movies-with-anki)
    * [Phím tắt nếu đặt AutoHotkey](#phím-tắt-nếu-đặt-autohotkey)
    * [Tạo thêm phím tắt ctrl+g](#tạo-thêm-phím-tắt-ctrl-g)
* [AutoHotkey](#autohotkey)



## Bộ Inception

[Link download](https://1drv.ms/u/s!Au96OifgcsxQhvwjeOlMLZ36huYsHA?e=ERFoGK)

Chỉnh Options:
* `New cards/day`: 9999
* `Maximum reviews/day`: 9999

**Đừng** tick
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

Thêm đường dẫn tới `ffmpeg/bin`.

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
`Settings > System > Clipboard`

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

**CSS Beautifier:**
https://www.freeformatter.com/css-beautifier.html

## Export to csv

Google Sheets:
https://docs.google.com/spreadsheets/u/0/

### Tạo IPA
https://tophonetics.com/

### Tạo hint
```
=if(or(exact(C1,"), isblank(C1)), ", if(iserr(FIND( , C1)),CONCATENATE(left(C1, 1), ,REGEXREPLACE(mid(C1, 2, len(C1)-2),[a-z], _ ),right(C1, 1)),REGEXREPLACE(REGEXREPLACE(C1,\b , ), \B([a-z]), _)))
```
### Tạo google translate
```
=GOOGLETRANSLATE(C1, en, vi)
```

## Phím tắt

### Phím tắt Watch Foreign Language Movies with Anki
`R` – chơi lại

`Ctrl+R` – chơi lại video

`Shift+R` - chơi liên tục

`[` - chơi lại card hiện tại và card trước

`]` - chơi lại card hiện tại và card tiếp theo

`Shift+[` - gộp card hiện tại và card trước

`Shift+]` - gộp card hiện tại và card sau

`,` – chỉnh mpv chơi sớm 0.25s

`.` – chỉnh mpv chơi muộn 0.25s

`<` (`Shift+,`) – chỉnh mpv kết thúc sớm 0.25s

`>` (`Shift+.`) – chỉnh mpv kết thúc muộn 0.25s

`Ctrl+Shift+,` – chỉnh thời gian bắt đầu quay lại mặc định

`Ctrl+Shift+.` – chỉnh thời gian kết thúc quay lại mặc định

### Phím tắt nếu đặt AutoHotkey

`Ctrl + F` – tăng mốc thời gian lên 200ms

`Ctrl + D` – giảm mốc thời gian đi 200ms

`Ctrl + Win + F` – tăng mốc thời gian lên 100ms

`Ctrl + Win + D` – giảm mốc thời gian xuống 100ms

### Tạo thêm phím tắt ctrl g

Sửa trong file của **Edit audios in the external editor**, thêm:
```
action = QAction("Edit audios", aqt.mw)
action.setShortcut(QKeySequence('ctrl+g'))
action.triggered.connect(handleOpenAudios)
menu.addAction(action)
```

## AutoHotkey
Thêm dòng sau trong file .ahk chính
```
#Include AnkiMovies.ahk
```

Download code ở đây [AnkiMovies](https://github.com/hieuvijjo/AnkiMovies), giải nén và copy file `AnkiMovies.ahk` vào cùng thư mục với file .ahk chính.
