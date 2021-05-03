# AnkiMovies

## Link bộ Inception:
https://1drv.ms/u/s!Au96OifgcsxQhvwjeOlMLZ36huYsHA?e=ERFoGK
* New cards/day: 9999
* Maximum reviews/day: 9999
Đừng tick
* Always include question side when replaying audio

## Cài Add-ons
1. Watch Foreign Language Movies with Anki https://bit.ly/3xIXl2L
2. Advanced Browser
3. Anki Zoom
4. Batch Editing
5. Edit audios in the external editor
6. Edit Field During Review
7. Review Heatmap

## FFmpeg
https://www.gyan.dev/ffmpeg/builds/

###Add to the PATH on Windows 10
https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/
Edit the system environment variables


## mpv
https://sourceforge.net/projects/mpv-player-windows/files
Anki mới không cần cài!

###Visual Studio Code
https://code.visualstudio.com

Chỉnh config:
- Run: `%APPDATA%/mpv`

  sub-visibility=no
  sub-auto=fuzzy
  slang=eng
  alang=eng
  audio-file-auto=fuzzy
  save-position-on-quit=yes
  autofit-larger=100%x100%
  geometry=50%:50%

### Persistent properties:
https://github.com/d87/mpv-persist-properties

## Turn on Clipboard History
Settings > System > Clipboard

## Sửa lai mục Expression
Advanced Browser: https://ankiweb.net/shared/info/874215009
### Find and replace:
\{[^}]*\}
\s*<[^>]*>\s*

## Tạo và sắp xếp lại các fields
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

## Chỉnh size của image trong Editor:

Chỉnh file editable.css

Mac:
/Applications/Anki.app/Contents/Resources/aqt_data/web/css/

Win:
C:\Program Files\Anki\aqt_data\web\css\

CSS Beautifier:
https://www.freeformatter.com/css-beautifier.html

## Export to csv

Google Sheets:
https://docs.google.com/spreadsheets/u/0/

### Tạo IPA
https://tophonetics.com/

### Tạo hint:
  =if(or(exact(C1,"), isblank(C1)), ", if(iserr(FIND( , C1)),CONCATENATE(left(C1, 1), ,REGEXREPLACE(mid(C1, 2, len(C1)-2),[a-z], _ ),right(C1, 1)),REGEXREPLACE(REGEXREPLACE(C1,\b , ), \B([a-z]), _)))
###Tạo google translate
  =GOOGLETRANSLATE(C1, en, vi)
