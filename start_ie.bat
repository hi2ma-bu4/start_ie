@echo off
setlocal
Set openPage=http://www.google.co.jp/
if not "%~1"=="" (
	Set openPage=%~1
)
echo 起動ページ: "%openPage%"

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "$app = New-Object -ComObject InternetExplorer.Application; $app.navigate(\"%openPage%\"); $app.Visible = $true;"
endlocal