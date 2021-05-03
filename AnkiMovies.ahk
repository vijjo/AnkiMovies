Extract_Timestamp(string) 
{
	pattern := "(\D*)(\d+)\.(\d+)\.(\d+)\.(\d+)"
	prefix := RegExReplace(string, pattern, "$1")
	hour := RegExReplace(string, pattern, "$2")
	minute := RegExReplace(string, pattern, "$3")
	second := RegExReplace(string, pattern, "$4")
	milisec := RegExReplace(string, pattern, "$5")
	time_length := (hour*3600 + minute*60 + second)*1000 + milisec
	;~ MsgBox, %prefix% %hour% %minute% %second% %milisec%`nlength: %time_length%
	return time_length
}

Return_Timestamp(length) 
{
	milisec := Format("{:03}", Mod(length, 1000))
	length := Floor(length/1000)
	second := Format("{:02}", Mod(length, 60))
	length := Floor(length/60)
	minute := Format("{:02}", Mod(length, 60))
	hour := Floor(length/60)
	timestamp = %hour%.%minute%.%second%.%milisec%
	return timestamp
}

Change_Timestamp(period, string)
{
	time_length := Extract_Timestamp(string)
	;~ MsgBox, %time_length%
	time_length += period
	;~ MsgBox, %time_length%
	timestamp := Return_Timestamp(time_length)
	pattern := "(\D*)(\d+)\.(\d+)\.(\d+)\.(\d+)"
	string := RegExReplace(string, pattern, "$1") "" timestamp
	return string
}

Modify_Clipboard_Timestamp(period)
{
	Send, ^c
	Sleep, 200
	Clipboard := Change_Timestamp(period, Clipboard)
	Send, ^v
}

#IfWinActive, - Anki$ ahk_class Qt5QWindowIcon ahk_exe anki.exe
^f::Modify_Clipboard_Timestamp(200)
^#f::Modify_Clipboard_Timestamp(100)
^d::Modify_Clipboard_Timestamp(-200)
^#d::Modify_Clipboard_Timestamp(-100)
