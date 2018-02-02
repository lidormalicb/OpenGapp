@echo off
color 2f

adb kill-server
adb start-server
@echo Preparing to install all Gapps files to device
@pause
@for /f "delims=|" %%f in ('dir /b "D:\GAPPS\ARM\4.4\"*.apk') do @"D:\GAPPS\ARM\4.4\ADB\adb.exe" install -r "D:\GAPPS\ARM\4.4\%%f"
@echo End of Batch File
@echo Done! Reboot You're Phone!
adb reboot 
@pause