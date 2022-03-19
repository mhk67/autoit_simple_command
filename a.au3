#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; in moteghayer barabar shavad ba tedad server ha ye proxy
Global $server_count=18

$server_count-=1

Run(@ScriptDir & '\Connection.exe')
AutoItSetOption("MouseCoordMode", 0)
WinWait('app title')
WinActivate('app title')
MouseClick('primary', 130, 348, 1, 0)
Sleep(2000)

$file_name = ".\mhk_runed_count_cache.txt"
$count = FileRead($file_name)

If $count == $server_count Then
	Send("{TAB}{TAB}{TAB}{TAB}{HOME}")
	$count = 0
Else
	Send("{TAB}{TAB}{TAB}{TAB}{DOWN}")
	$count += 1
EndIf

FileDelete($file_name)
FileWrite($file_name, $count)


MouseClick('primary', 130, 348, 1, 0)
Exit
