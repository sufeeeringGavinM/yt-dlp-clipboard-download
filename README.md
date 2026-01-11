# yt-dlp-clipboard-download
Uses yt-dlp to download video in clipboard then places downloaded file back to clipboard. Requires ffmpeg for converting downloaded video to mp4

# Installation
0. Install ffmpeg
1. Download yt-dlp.exe [here](https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe)
2. Download downloader.bat and fcopy.bat. Place them in the same folder as the yt-dlp.exe.
3. Change instances of G:/DOWNLOAD to the directory where you want to download your video files.

# Usage
Copy the link of the video you want to download then click downloader.bat. Wait for the command prompt window to disappear. File should be in your clipboard now. Just CTRL+V somewhere to send it. Personally, I use this to send youtube videos through chat.

# Note
This recodes video files to mp4 to make it easier to find which video file was just downloaded. This makes it require ffmpeg. 

Also a temporary file named temporarilementdesicration--hope i got that right--is created and deleted to store the filename of the downloaded file. 
