@echo off
:: takes clipboard content as variable
for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do set id=%%I
:: uncomment this if you want autoupdate everytime
:: .\yt-dlp.exe -U
:: actual downloading, remove --recode mp4 if you want original format
.\yt-dlp.exe --recode mp4 -o "%%(id)s.%%(ext)s" %id%
:: why id? unique parse-friendly names!
.\yt-dlp.exe --skip-download --print id %id% > temporarilementedesicration.txt
set /p my_variable=<temporarilementedesicration.txt
set TARGETFILEPATH=%my_variable%.mp4
@echo on
del temporarilementedesicration.txt
powershell -NoProfile -STA -Command ^
  "Add-Type -AssemblyName System.Windows.Forms;" ^
  "$path = (Resolve-Path -LiteralPath '%TARGETFILEPATH%').Path;" ^
  "$col = New-Object Collections.Specialized.StringCollection;" ^
  "$col.Add($path) | Out-Null;" ^
  "$data = New-Object Windows.Forms.DataObject;" ^
  "$effect = [byte[]](5,0,0,0);" ^
  "$drop = New-Object IO.MemoryStream;" ^
  "$drop.Write($effect,0,$effect.Length);" ^
  "$data.SetFileDropList($col);" ^
  "$data.SetData('Preferred DropEffect', $drop);" ^
  "[Windows.Forms.Clipboard]::Clear();" ^
  "[Windows.Forms.Clipboard]::SetDataObject($data, $true);" ^
  "$drop.Close();"
