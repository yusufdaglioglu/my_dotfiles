# Apps

aegis (OTP)

App Manager (io.github.muntashirakon.AppManager) (installed app list by name or package id's) (it interrupt any share "android-intent" so you can see what it shares)

aurora store (google play store alternative)

Barcode Scanner (ZXing Team - com.google.zxing.client.android)

com.kgurgul.cpuinfo (not only cpu info but sensors and OS info and many others)

neo-store (open source market)

K-9 Mail (for gmail we need app-spesific password from: google accouts --> security --> 2-Step Verification --> App passwords)

LibreOffice Viewer

RethinkDNS (no root firewall) (do not use Netguard. Netguard logs only on pro version and does not contain optional DNS changer)

NewPipe (youtube client) (custom repo should be added event it exist on f-droid as default. otherwise the updates will delay.)

Open in browser (ru.gelin.android.browser.open) (open any file with any browser)

OpenBoard (org.dslul.openboard.inputmethod.latin) (google's keyboard fork) (keyboard)

OsmAnd (it use openstreet maps) 

- copy Whatsapp location's as google-maps URL:

  -1 use whatsapp web

  -2 mobile apps does not allow copy. first open url with Osmand and choose "copy coordinates". Go to "maps.google.com" via web browser. and paste the coordinates to search.

Organic Maps (it use openstreet maps)

QuickDic (dictionary for tr eng gr)

Molly.im (Signal alternative client)

Simple Calendar (com.simplemobiletools.calendar) (shows birthdays from contacts)

SuperFreezZ (stop any app)

Termux (command line app for telnet, ping vs...)

tor browser

VLC

org.billthefarmer.editor Editor (simple text editor)

Vanilla music player (support for long file names)

Nekogram X (telegram client)

PrivacyBlur (blur photos)

element (only use for sending notes between computer and mobile phone)

unitto (sadellie) (calculator & unit converter & history)

---

# SCREEN BUTTON UTILITIES

# Screenshot Tile (NoRoot) (com.github.cvzi.screenshottile)
- takes screenshots with 3 seconds delay. this delay is important is some cases.

# com.asdoi.quicktiles
adds these buttons to notification panel:
- keep screen on
- power/restart device

# dimmer (giraffine.dimmer)
dim screen light more than OS

# KeepOn (fr.twentynine.keepon)
keep screen on from notification bar

# Volume Control (com.punksta.apps.volumecontrol)
- it opens it's own window and shows each volume source seperatly. If OEM device has set any volume source with another, this app will change whole depended volume sources automatically. So you can check which source are seperated by OEM(device). for example "ringer volume" and "notification volume" sources can not be different.
- Has volume profiles on notification bar

# Lock (name.seguri.android.lock)
- locks screen with desktop button.
- Install this app, only if you can not find any feature embeeded on system with those keywords: "Double-Tap to Lock and Unlock Android".

---

# FILE MANAGERS

- ## MaterialFiles

  https://github.com/zhanghai/MaterialFiles

  Includes FTP Server feature.

  Notes:
  - __Gnome Nautilus__ has embeeded ftp-client. but secure ftp (ftps) is buggy. you should
    - always use username and password!
    - VPN must be fully excluded.
  - for long file names enable the "marquee". the animation works very fast enough.
  - use the read-only feauture on FTP if possible

- ## SimpleMobileTools / Simple-File-Manager
  Better for long file names (font size can be decreased). THIS HAS PRIVACY ISSUES. DO NOT INSTALL IT.

- ## OS Embeeded file manager
  it can be used as default. it is mostly faster and issue-free.

---

# WEB BROWSERS

## Required
"Fennec F-droid" (it is the same orginal mozilla Firefox. without extra privacy patches. orginal mozilla firefox app does not allow to open about:config page and it is not on f-droid.)

## Optional
- install below apps only if you required. they are not very trustworthy.
- do not change any privacy configs on them. because you will need them if "Fennec F-droid" can not open a web page because it has "user.js" configs. If you change any config, there is no reason to install a new browser if you install it because compability issues.
- Disable the below apps with SuperFreezZ.
- Do not prefer privacy patched browser from below. there is no reason to install a new browser if you install it because compability issues.

| name                       | privacy patches | base     | discontinued | main diff                                                                  |
|----------------------------|-----------------|----------|--------------|----------------------------------------------------------------------------|
| Bromite                    | yes             | chromium | yes          | privacy                                                                    |
| Cromite                    | yes             | chromium | no           | Bromite fork                                                               |
| vanadium                   | no              | chromium | no           | de-google without privacy for GrapheneOS. But it only works on GrapheneOS. |
| ungoogled-chromium-android | no              | chromium | yes          | de-google without privacy                                                  |
| chromium (vanilla)         | no              | chromium | yes          | I could not found any repo for android. do not trust 'woolyss'.            |
| mulch                      | few only        | chromium | no           | de-google without privacy for DivestOS                                     |
| Brave                      | yes             | chromium | no           | commercial with tor-browser support                                        |
| google chrome              | no              | chromium | no           |                                                                            |
| mull                       | yes             | firefox  | no           | privacy for DivestOS                                                       |
| Mozilla Firefox            | no              | firefox  | no           |                                                                            |
| iceraven                   | no              | firefox  | no           | support more addons which not supported by Mozilla                         |

---

# PDF Readers

- https://gitlab.com/mudlej_android/mj_pdf_reader
- MuPDF

do not use:
- "Secure PDF Viewer" https://github.com/GrapheneOS/PdfViewer --> It based on chromium.
- can not use firefox built-in. because firefox does not open local files.

---

Download apps directly from source (like Github Release etc):

https://github.com/ImranR98/Obtainium

---

# Offline Dictionaries

- __firefox-translations add-on of firefox__ --> does not support Greek and Turkish yet.

- __DeepL__ --> supports Greek and Turkish but it is does not have offline GUI for Android or Linux desktop yet.

- __Kiwix__ --> offline Wikipedia & Wiki-dictionary with built-in download manager. but currently __QuickDic__ on Android has faster and better UI.

- __aar2__ --> use __QuickDic__ which has built-in download manager.

# Sources

- ## for Kiwix

  https://library.kiwix.org (Desktop and Android app of Kiwix has built-in search and download-manager).

- ## for AAR2

  https://github.com/itkach/slob/wiki/Dictionaries

---