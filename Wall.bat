@echo OFF 
powershell.exe -Command "Invoke-WebRequest https://gitlab.com/chamod12/changewallpaper-win10/-/raw/main/TranscodedWallpaper -OutFile TranscodedWallpaper"
powershell.exe -Command "Invoke-WebRequest https://gitlab.com/chamod12/changewallpaper-win10/-/raw/main/CachedImage_1024_768_POS4.jpg -OutFile CachedImage_1024_768_POS4.jpg"

SET "TranscodedWallpaper=TranscodedWallpaper"
SET "CachedImage=CachedImage_1024_768_POS4.jpg"

SET "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
SET "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

COPY /Y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper"
COPY /Y "%CachedImage%" "%cachedFileDir%\CachedImage_1024_768_POS4.jpg"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
