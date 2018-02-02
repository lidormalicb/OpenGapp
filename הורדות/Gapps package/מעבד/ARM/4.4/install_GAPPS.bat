@echo off
color 2f

adb kill-server
adb start-server
@echo Preparing to install all Gapps files to device
@pause
@for /f "delims=|" %%f in ('dir /b "C:\GAPPS\ARM\4.4\"*.apk') do @"C:\GAPPS\ARM\4.4\ADB\adb.exe" install -r "C:\GAPPS\ARM\4.4\%%f"
@echo End of Batch File
@echo Done! Reboot You're Phone!
adb reboot 
@pause