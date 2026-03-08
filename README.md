# yt-dlp-clipboard-download
Uses yt-dlp to download video in clipboard then places downloaded file back to clipboard. Requires ffmpeg for converting downloaded video to mp4

# Installation
0. Install ffmpeg
1. Download yt-dlp.exe [here](https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe)
2. Download downloader.bat and fcopy.bat. Place them in the same folder as the yt-dlp.exe.

# Usage
Copy the link of the video you want to download then click downloader.bat. Wait for the command prompt window to disappear. File should be in your clipboard now (and the directory you put downloader.bat in). Just CTRL+V somewhere to send it. 

Personally, I use this to send instagram reels on desktop without sending the link!

# Notes
This recodes video files to mp4 to make it easier to find which video file was just downloaded. This makes it require ffmpeg. If you don't want this, remove "--recode mp4" (it says it in the file).

Also a temporary file named temporarilementdesicration--hope i got that right--is created and deleted to store the filename of the downloaded file. 
