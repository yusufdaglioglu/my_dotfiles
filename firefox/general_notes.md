# Firefox sync
Firefox embeeded sync feature can sync only bookmarks and it's E2E.

---

# shortcuts on linux
copy .desktop files to:

> $HOME/.local/share/applications/firefox_shortcuts

---

# EXTENSIONS

- ublock-origin
  - Addblocker (it also includes embeeded javascript disabler)

- DISABLED BY DEFAULT (only enable when you need)

  - Dark Background and Light Text
    - alternative of "darkreader" (darkreader does its job better, but it is slower then this one.)

  - Sidebery (by mbnuqw)
    - tab list on left panel

  - singlefilez
    - save page as zip file which includes images seperated (it is good idea to download all medias)

  - single-file
    - save page as one html file (does not the same infrastructure as buil-in print-preview mode of Firefox)

  - https://github.com/iamadamdev/bypass-paywalls-chrome
    - if the extension will not work, try built-in "reader view" of browser.

  - https://github.com/chatziko/location-guard 
    - Faker for HTML5 geolocation.
    - usage:
      - change a fake location from "fixed location" tab.
      - optionally "Accuracy" can be set from "Privacy Levels" tab.
      - "Options" tab --> "Default level"="use fixed location".

  - https://gitlab.com/losnappas/Song-identifier/
    - shazam, soundhood alternative. it listens the voice of browser web page. (or try other native clients on Fedora)

  - SoundFixer (by Val Packett)
    - increase media sound

  - NoScript Security Suite
    - block by spesific features only: LAN requests, fonts, scripts, media, CSS...

  - Cookie Quick Manager
    - allow manipulation "same site" property of a cookie (which is not available on firefox).
    - allow to see all values in larger area and copy them faster.
    - lock a cookie so web site can not remove it.

  - Link gopher
    - extract all links on a web page.

- DOWNLOAD MANAGERS

  Note: Demo for HLS: https://hlsjs.video-dev.org/demo/

  - HLS Downloader (by puemos) or Live Stream Downloader (by Chandler Stimson)
    - tested.

  - DownThemAll!
    - download all content of a web page by filtering them via prefix or type (video, picture)...
    - does not support videos which are streaming.

- DO NOT INSTALL:
  - Video DownloadHelper
    - works only on windows with a native app dependency.

  - turbo download manager
    - not developing anymore.

---

# Print

## save html as pdf (all browsers)
When we choose to print the web page, the print dialog shows an option for PDF. There is no need for extension.

## remove header on print output (only firefox)
Firefox adds headers (date, page number...) to every page on the print preview. To disable this: click "more settings" (but this is not like a button, it's simple text!), and then you will see the option to remove headers.

---

# "always on top" on Gnome
super button (button with ms-windows icon) + right click via mouse --> it shows always on top option

---

# PROFILES

# firefox-containers-helpers
https://github.com/charles-m-knox/firefox-containers-helper

This extension allows to export and import all configs to JSON.

Currently I don't prefer "container" for below reasons:
- there is no quick way to delete cookies per container.
- Sometimes I open third party sites in wrong containers.
- firefox-containers-helpers was the only extension which can export/import configs. But the addon is not updating since long time.

It is better to use profile_generator.

# Create profile
Do not create with GUI. Because command like can create more human-readable directory names. Use command line:

firefox -CreateProfile "dev $HOME/.mozilla/firefox/dev"

# Rename profile directory name
If you change the $HOME/.mozilla/firefox/profileName directory, the browser still opens but getting errors on some functionalities.

# How to show "Profile name" per window
There is an extension for this: https://addons.mozilla.org/en-US/firefox/addon/window-titler/

But I don't prefer this because:
- the addon does not get updates.
- the title bar should be opened always. (from about config: "browser.tabs.inTitlebar=0")
- I should set on all profiles manually the name of the profile.

I prefer below solutions:

- ## 1- Profile color for each window
Each profile can be colored by Mozilla's official theme extensions:
https://addons.mozilla.org/en-US/firefox/addon/firefox-color/

Open the extension settings and click the "random" button.

- ## 2- Home default
default home page includes the profile name on title and html-body content. links on the homepage are opening on new tab. so home-page should never closed. so profile name can be seen from there.