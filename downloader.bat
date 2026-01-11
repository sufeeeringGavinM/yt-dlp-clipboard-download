@echo off

taskkill /FI "IMAGENAME eq explorer.exe" /FI "WINDOWTITLE eq D*"

for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do set id=%%I

G:\DOWNLOAD\yt-dlp.exe --recode mp4 -o "G:/DOWNLOAD/%%(id)s.%%(ext)s" %id%

G:\DOWNLOAD\yt-dlp.exe --skip-download --print id %id% > temporarilementedesicration.txt

set /p my_variable=<temporarilementedesicration.txt

set TARGETFILEPATH=G:\DOWNLOAD\%my_variable%.mp4

@echo on

fcopy.bat %TARGETFILEPATH%

del temporarilementedesicration.txt

exit
