
#include-once
#include <ID3.au3>
#include <Array.au3>
#include <File.au3>

;ID3Speed is used for main testing how fast a folder of mp3 will take to process.


;~ $Filename = FileOpenDialog ( "Select Mp3 File", "", "Muisc (*.mp3)")
;~ $sTagInfo = _ID3ReadTag($Filename)
;~ MsgBox(0,"TagInfo",$sTagInfo)
;~ MsgBox(0,"ID3v1 Title",_ID3GetTagField("Title")) ;Title from ID3v1
;~ MsgBox(0,"ID3v2 Title",_ID3GetTagField("TIT2")) ;Title from ID3v2
;~ Exit

;~ $Filename = FileOpenDialog( "Select Mp3 File", "", "Muisc (*.mp3)")
;~ $sTagInfo = _ID3ReadTag($Filename)
;~ _ID3SetTagField("COMM","TEST COMMENT - ID3v2 Comment Tag")
;~ _ID3WriteTag($Filename)
;~ Exit

Local $MusicFolder = FileSelectFolder("Choose a folder.", "")
;~ $Foldername = "D:\ID3_Speed"
$Files = _FileListToArray($MusicFolder,"*.mp3",1)

FileChangeDir($MusicFolder)
$sFilter = "APIC"
$begin = TimerInit()
Local $sTagInfo
For $i = 1 To $Files[0]

	$sTagInfo = _ID3ReadTag($Files[$i],2)
	;MsgBox(0,"$sTagInfo",$sTagInfo)
;~ 	$iTestTXXX = StringInStr($sTagInfo, "COMM")
;~ 	If $iTestTXXX > 0 Then
;~ 		$iNumTXXX = Number(StringMid($sTagInfo,$iTestTXXX + 5,1))
;~ 		For $j = 1 To $iNumTXXX
;~ 			MsgBox(0,"COMM:" & $j,$Files[$i] & @CRLF & _ID3v2Frame_GetString("COMM",$j))
;~ 		Next
;~ 	EndIf

;~ 	$ID3v1Tag = _ID3TagToArray($Files[$i],1)
;~ 	_ArrayDisplay($ID3v1Tag,"$ID3v1Tag")

	;$ID3v2Tag = _ID3TagToArray($Files[$i],2,-1)
;~ 	_ArrayDisplay($ID3v2Tag,"$ID3v2Tag")
Next
$dif = TimerDiff($begin)
MsgBox(0,"Time",$dif)




;~ $sFilter = "TIT2|TALB|TPE1|TYER|APIC"
;~ $ID3v2Tag = _ID3TagToArray($Filename,2,$sFilter)
;~ $ID3v2Tag = _ID3TagToArray($Filename,2)
;~ _ArrayDisplay($ID3v2Tag,"$ID3v2Tag")

;~ $ID3v1Tag = _ID3TagToArray($Filename,1)
;~ _ArrayDisplay($ID3v1Tag,"$ID3v1Tag")


_ID3DeleteFiles()