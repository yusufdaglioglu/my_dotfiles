# FIREJAIL
Minimum 0.9.58.2_1 should be installed. Otherwise it will not block wireless network connection.

Firejail can be build from command line. it's easy.

# APPS INSIDE FEDORA

## partition manager
- blivet-gui
  - dnf
  - gparted and gnome-disk-utility does not support LVM and btrfs (which is default file-system on Fedora).
- gparted
  - dnf
  - gnome-disk-utility does not shot long partition names + and not show flags

## PDF/E-book
- PDF Mix Tool
  - flatpak
- com.calibre_ebook.calibre
  - flatpak
- Foliate (ebook reader)
  - flatpak

## Gnome
- flatseal (permission manager for flatpak)
  - flatpak 
- ca.desrt.dconf-editor (gnome config editor gui)
  - flatpak 
- org.gnome.Extensions (gnome extension manager)
  - flatpak
- gnome-tweak-tool
  - dnf
- org.gnome.seahorse.Application (GUI for Keyring (password and certificates of OS))
  - flatpak

## Media Player
- Celluloid (media player based on MPV) (fast seek is faster then VLC)
  - flatpak
- VLC
  - dnf

## Music recognizer
- com.github.marinm.songrec (Shazam client)
  - flatpak 
- io.github.seadve.Mousai (AudD client - alternative to Shazam)
  - flatpak

## others
- git-gui
  - dnf
  - this package includes "gitk"
- gnome boxes
  - installed default
- remmina (remote RDP client)
  - flatpak
- ungoogled-chromium (does not include any privacy patch.)
  - flatpak
  - appimage (is 3rd party. prefer flatpak.)
- chromium
  - do not install the packages of woolyss.
  - do not install https://flathub.org/apps/org.chromium.Chromium
  - portable version should be download manually: https://www.chromium.org/getting-involved/download-chromium/#not-as-easy-steps
  - dnf install chromium (explained here: https://docs.fedoraproject.org/en-US/quick-docs/installing-chromium-or-google-chrome-browsers/)
- peazip
  - flatpak
- avidemux
  - flatpak
- nl.hjdskes.gcolor3
  - flatpak
- shotwell (for fast crop operations)
  - flatpak
- KeePassXC
  - flatpak
- qBittorrent
  - flatpak 
  - this app has unique features:
    - "download insequentel order" which requires to download files 1 by 1 (ordered for TV series).
    - "download last and first pieces first" which requires to stream video files.
- com.gitlab.davem.ClamTk (virus scanner) (or scan viruses inside Windows-VM using "Windows Defender")
  - flatpak
- Qalculate!
  - flatpak
  - calculator & unit converter & history
- fr.romainvigier.MetadataCleaner
  - flatpak
  - GUI for MAT2 (media metadata cleaner). it has support for "flac" files (but exiftool does not support it).
- https://flathub.org/apps/org.gnome.NetworkDisplays
  - flatpak
  - GUI for monitor miroring (Miracast, Chromecast...)

## http clients

- Hoppscotch (Downloads are available on from ther web site, not github)
- insomnia

insomnia does not include javascript execution after and before the request. But Hoppscotch support it (like Postman).

# APPS INSIDE VIRTUAL MACHINE WITH GUEST FEDORA:
- google chrome (for compability issues or tests)
  - rpm (because does not need any video codec)
- teamviewer
  - rpm (because portable version not working)
- opera (for free VPN)
  - snap (because Snap build does not need any video coded. if you will install rpm or deb version you will need to read below note)
- brave browser (officialy supports TOR. in case any compability problem happens with TOR-Browser.)
  - flatpak ve snap are still beta.

# CODEC TEST FOR BROWSERS
video test page: https://tekeye.uk/html/html5-video-test-page

## Opera video codec
libffmpeg.so is licenced codec for videos. but it has different versions and different builds. libffmpeg for the new chromium/chrome builds does not work on new opera versions. therefore you need to find specific build of libffmpeg.so for opera.

For example this build works for Opera 63.0.3x: https://github.com/iteufel/nwjs-ffmpeg-prebuilt/releases/download/0.39.2/0.39.2-linux-x64.zip

# DOWNLOADED INSTALLERS
CRITICAL_APPS: in case any offline environment. "tor-browser" is the exception (in case it may blocked by ISP).

```
├── CRITICAL_APPS
│   ├── backup.txt
│   ├── com.kunzisoft.keepass.libre_119.apk
│   ├── com.nutomic.syncthingandroid_4340.apk
│   ├── KeePassXC-2.7.4-arm64.dmg
│   ├── KeePassXC-2.7.4-Win64.zip
│   ├── KeePassXC-2.7.4-x86_64.AppImage
│   ├── KeePassXC-2.7.4-x86_64.dmg
│   ├── LibreOfficePortable_7.4.5_MultilingualAll.paf.exe
│   ├── peazip-9.1.0.DARWIN.aarch64.dmg
│   ├── peazip-9.1.0.DARWIN.x86_64.dmg
│   ├── peazip_portable-9.1.0.LINUX.GTK2.x86_64.tar.gz
│   ├── peazip_portable-9.1.0.WIN64.zip
│   ├── syncthing-linux-amd64-v1.23.4.tar.gz
│   ├── syncthing-macos-universal-v1.23.4.zip
│   ├── syncthing-windows-amd64-v1.23.4.zip
│   ├── tor-browser-12.0.4-android-aarch64-multi.apk
│   ├── TorBrowser-12.0.4-macos_ALL.dmg
│   ├── torbrowser-install-win64-12.0.4_ALL.exe
│   ├── tor-browser-linux64-12.0.4_ALL.tar.xz
│   ├── ventoy-1.0.90-linux.tar.gz
│   └── ventoy-1.0.90-windows.zip
├── office_pro_plus_2021_retail.img
└── PORTABLE_LINUX_APPS
    ├── 7z.zip
    ├── android_sdk_linux.tar
    ├── android-studio-2022.1.1.21-linux.tar.gz
    ├── apache-maven-3.9.1-bin.tar.gz
    ├── dbeaver-ce-23.0.1-linux.gtk.x86_64-nojdk.tar.gz
    ├── eclipse-java-2023-03-R-linux-gtk-x86_64.tar.gz
    ├── fastfetch
    │   ├── all
    │   ├── fastfetch
    │   └── run.sh
    ├── ffmpeg-release-amd64-static.tar.xz
    ├── GIMP_AppImage-release-2.10.22-withplugins-x86_64.AppImage
    ├── Image-ExifTool-12.59.tar.gz
    ├── intellij_idea_community-2023.1.1.tar.gz
    ├── kubernetes_tools.tar
    ├── node-v16.13.0-linux-x64.tar.xz
    ├── OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz
    ├── VLC_media_player-3.0.11.1-x86_64.AppImage
    ├── VSCodium-1.77.0.23090.glibc2.17-x86_64.AppImage
    └── yt-dlp_linux
```