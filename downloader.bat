@echo off

:: takes clipboard content as variable
for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do set id=%%I

:: uncomment this if you don't want autoupdate everytime
:: G:\DOWNLOAD\yt-dlp.exe -U

:: actual downloading, remove --recode mp4 if you want original format
.\yt-dlp.exe --recode mp4 -o "%%(id)s.%%(ext)s" %id%

:: why id? unique parse-friendly names!
.\yt-dlp.exe --skip-download --print id %id% > temporarilementedesicration.txt

set /p my_variable=<temporarilementedesicration.txt

set TARGETFILEPATH=%my_variable%.mp4

@echo on

.\fcopy.bat %TARGETFILEPATH%

del temporarilementedesicration.txt


