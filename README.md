כדי לצפות בקובץ תקין מומלץ להוריד אותו ולקרא
http://bit.ly/OpenGappsRead

#OpenGapp By Lidor Malich

באפשרותך להתקין את חבילת Gapps (חבילת היישומים של גוגל) בכמה דרכים:
	1. דרך המכשיר עצמו באמצעות APK
	2. באמצעות ADB בצורה אוטומטית
	3.באמצעות הריקוברי (דורש ריקוברי מקוסטם)
### install
#הוראות התקנה:
	APK - שיטה 1:
		1. הורד את היישום מהקישור (http://bit.ly/OpenGappHebrew)
		2. התקן את היישום
		3. הענק לאפליקציה את ההרשאות הנצרכות
		3.1. אם יש לך ROOT אשר ליישום את הבקשה על מנת שיוכל להתקין כראוי לתוך מערכת הקבצים
		4.בחר את החבילה של Gapps הרצויה (המלצה על FULL או סטוק)
		5.התחל הורדה
		6.התקן ותהנה מחבילת Gapps במכשיר
	ADB - שיטה 2:
			*-נדרש לדעת את ארכיטקטורת המעבד(ARM/ ARM64/ x86/ x86_64)
		1.פתח את ההגדרות מפתחים במכשיר
		2.הכנס אל הגדרות מפתחים
		3.אשר את איתור באגים של USB
		4.חבר את המכשיר אל המחשב והתקן דרייברים מתאימים
		5.אשר במכשיר את ADB המחשב
		5.המשך להריץ את הסקריפט ותהנה מחבילת Gapps במכשיר
	Recovery - שיטה 3:
		1.
		
#שאלות נפוצות
	1. האם יש בעיה עם יש לי ROOT?
	לא, אין בעיה בשימוש עם ROOT.
	2.האם הכל פה בחינם?
	אכן, זה קוד פתוח של http://opengapps.org וכמה תוספות שלי
	3.
		
#הורדות
	הורדת היישום לנייד- http://bit.ly/OpenGappHebrew
	הורדת חבילת Gapps למחשב והתקנה בעזרת ADB -
		
		
#כל פעולה שנעשית באחריותך בלבד, אין צוות המאגר אחראים על כל נזק שיגרם בעקיפין / ישירות למכשיר שלך.
#השימוש באחריות המשתמש בלבד....





# Uber Adb Tools for Android
A simple tool that makes it more convenient to **install, uninstall and creating bug reports and more for multiple apps on multiple devices** with one command. Additionally uninstalling allows to use **wildcards as package name**. This is basically a front-end for the [Android Debug Bridge (ADB)](https://developer.android.com/studio/command-line/adb.html) which is required to run.

[![GitHub release](https://img.shields.io/github/release/patrickfav/uber-adb-tools.svg)](https://github.com/patrickfav/uber-adb-tools/releases/latest)
[![Build Status](https://travis-ci.org/patrickfav/uber-adb-tools.svg?branch=master)](https://travis-ci.org/patrickfav/uber-adb-tools)
[![Coverage Status](https://coveralls.io/repos/github/patrickfav/uber-adb-tools/badge.svg?branch=master)](https://coveralls.io/github/patrickfav/uber-adb-tools?branch=master)

Main features:

* Process multiple apps with wildcard support for package matching (e.g. `com.android.*` or `com.android.*e`) for features like: uninstalling, stopping, starting, clearing and showing app info
* Installing multiple apks from different locations with one command
* All commands can be executed on all connected devices simultaneously
* Fast and easy bug report features with screenshot, logcats, customizable dumpsys logs, pm and more 
* Starting custom activities to log additional information with bug report

Basic usage:

    java -jar uber-adb-tools.jar --install /folder/apks/
    java -jar uber-adb-tools.jar --uninstall com.your.packa*
    java -jar uber-adb-tools.jar --bugreport
    
More features:
    
    java -jar uber-adb-tools.jar --force-stop com.your.packa*
    java -jar uber-adb-tools.jar --clear com.your.packa*
    java -jar uber-adb-tools.jar --appinfo com.your.packa*
    java -jar uber-adb-tools.jar --start com.your.packa*

This should run on any Windows, Mac or Linux machine,

### Requirements

* JDK 7
* [Android Debug Bridge (ADB)](https://developer.android.com/studio/command-line/adb.html) set in `PATH` or `ANDROID_HOME` is set (some default locations work also, see below)

## Download

**[Grab jar from latest Release](https://github.com/patrickfav/uber-adb-tools/releases/latest)**

### Using the *.exe Launcher

 ![logo](misc/icon_sm.png)

 [Launch4J](http://launch4j.sourceforge.net/) is used to wrap the `.jar` into an Windows executable. It should automatically download the needed JRE if required. If a single argument will be passed (ie. a path) the tool will automatically install if it is an `.apk` (or folder with apks), so you can use it to drag an `.apk` over the `.exe` or use it to "Open with..." to automatically install an apk if double clicked.

## Demo

[![asciicast](https://asciinema.org/a/91091.png)](https://asciinema.org/a/91091)

## Command Line Interface

The documentation of all possible parameters

       --adbPath <path>                         Full path to adb executable. If this is omitted the tool tries to find
                                                adb in PATH env variable.
       --appinfo <package filter>               Will show additional information for like version, install-time, etc of
                                                the apps matching the argument. Argument is the filter string that has
                                                to be a package name or part of it containing wildcards '*'. Can be
                                                multiple filter Strings space separated. Example: 'com.android.*' or
                                                'com.android.* com.google.*'.
    -b,--bugreport <out folder>                 Creates a generic bug report (including eg. logcat and screenshot) from
                                                all connected devices and zips it to the folder given as arg. If no
                                                folder is given tries to zips it in the location of the .jar.
       --clear <package filter>                 Will clear app data for given packages. Argument is the filter string
                                                that has to be a package name or part of it containing wildcards '*'.
                                                Can be multiple filter Strings space separated. Example: 'com.android.*'
                                                or 'com.android.* com.google.*'.
       --debug                                  Prints additional info for debugging.
       --dryRun                                 Use this to see what would be installed/uninstalled on what devices with
                                                the given params. Will not install/uninstall anything.
       --dumpsysServices <service-name>         Only for bugreport: include only theses dumpsys services. See all
                                                services with 'adb shell dumpsys list'
       --force                                  If this flag is set all matched apps will be installed/uninstalled
                                                without any further warning. Otherwise a user input is necessary.
       --force-stop <package filter>            Will stop the process of given packages. Argument is the filter string
                                                that has to be a package name or part of it containing wildcards '*'.
                                                Can be multiple filter Strings space separated. Example: 'com.android.*'
                                                or 'com.android.* com.google.*'.
       --grant                                  Only for install: will grant all permissions set in the apk
                                                automatically.
    -h,--help                                   Prints docs
    -i,--install <apk file/folder>              Provide path to an apk file or folder containing apk files and the tool
                                                tries to install all of them to all connected devices (if not a specfic
                                                device is selected). It is possible to pass multiple files/folders as
                                                arguments e.g. '/apks apk1.apk apk2.apk'
       --keepData                               Only for uninstall: Uses the '-k' param on 'adb uninstall' to keep data
                                                and caches of the app.
       --quiet                                  Prints less output.
       --reportDebugIntent <package> <intent>   Only for Bugreport: This is useful to start a e.g. activity that e.g.
                                                logs additional info before reading the logcat. First param is a package
                                                filter (see --uninstall argument) followed by a series of params
                                                appended to a 'adb shell am' type command to start an activity or
                                                service (See https://goo.gl/MGK7ck). This will be executed for each
                                                app/package that is matched by the first parameter. You can use the
                                                placeholder '${package}' and will substitute the package name. Example:
                                                'com.google* start -n ${package}/com.myapp.LogActivity --ez LOG true'
                                                See https://goo.gl/luuPfz for the correct intent start syntax.
    -s,--serial <device serial>                 If this is set, will only use given device. Default is all connected
                                                devices. Device id is the same that is given by 'adb devices'
       --simpleBugreport                        Only for bugreport: report will only contain the most essential data
       --skipEmulators                          Skips device emulators for install/uninstall.
       --start <package filter> <[seconds]>     Will start the launcher activity of this app. Argument is the filter
                                                string that has to be a package name or part of it containing wildcards
                                                '*'. Can be multiple filter Strings space separated. Example:
                                                'com.android.*' or 'com.android.* com.google.*'. The last argument may
                                                be a int in seconds which represents the wait time between the apps eg.:
                                                'com.exmaple.* 10' will have a 10 sec delay between starts.
    -u,--uninstall <package filter>             Filter string that has to be a package name or part of it containing
                                                wildcards '*' for uninstalling. Can be multiple filter Strings space
                                                separated. Example: 'com.android.*' or 'com.android.* com.google.*'.
       --upgrade                                Only for install: Uses the '-r' param on 'adb install' for trying to
                                                reinstall the app and keeping its data.
    -v,--version                                Prints current version.
       --waitForDevice                          If set, will wait until a device is connected and debug mode is enabled.
   
### General

Test what would happen with dryrun:

    java -jar uber-adb-tools.jar --install /myfolder -dryRun

Install/Uninstall only on a certain device by providing the device's serial (check `adb devices`):

    java -jar uber-adb-tools.jar --uninstall com.your.packa* -s IUG65621532

Skip user prompt:

    java -jar uber-adb-tools.jar --uninstall com.your.packa* --force

Provide your own adb executables:

    java -jar uber-adb-tools.jar --bugreport --adbPath "C:\pathToAdb\adb.exe"
    
Wait until device is connected:

    java -jar uber-adb-tools.jar --uninstall com.your.packa* --waitForDevice 

### Install

If the apk is already installed upgrade to new version while keeping the app's data:

    java -jar uber-adb-tools.jar --install /myfolder/my-apk.apk --upgrade

Only install a certain apk file (as opposed to installing all from a folder):

    java -jar uber-adb-tools.jar --install /myfolder/my-apk.apk

Provide multiple files/folder

    java -jar uber-adb-tools.jar --install /myfolder/my-apk.apk /otherfolder /apk1.apk

### Uninstall
