# yt-dlp-clipboard-download
Uses yt-dlp to download then place downloaded file to clipboard

# Installation
-1. Install ffmpeg (optional if you remove --recode mp4 from downloader.bat)
0. Download yt-dlp.exe [here](https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe)
1. Download downloader.bat and fcopy.bat. Place them in the same folder as the yt-dlp.exe.
2. Change instances of G:/DOWNLOAD to the directory where you want to download your video files.

# Usage
Click downloader.bat, wait for the command prompt window to disappear. File should be in your clipboard now. Just CTRL+V somewhere to send it. Personally, I use this to send youtube videos through chat.

# Note
This recodes video files to mp4. This makes it require ffmpeg. If you don't wanna have to download that, remove --recode mp4
