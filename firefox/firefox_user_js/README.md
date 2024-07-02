# Firefox user-js
"__generated_personal_user.js__" is the config file which can be use on Firefox.

It based on arkenfox's user.js. The generator (shell script) filters some configs which breaks most of web pages which I visit them daily.

You can inject the configs to your Android via "javascript_for_execute_js_on_android.js" file.

# Test
You can test your browser from: https://github.com/arkenfox/user.js/wiki/Appendix-B-Test-Sites-%5BFingerprinting%5D

Other online utilities for test web browser: https://github.com/arkenfox/user.js/wiki/Appendix-A-Test-Sites

# Why I don't use LibreWolf or Mullvad browser?
They are good. but:
- Firefox is or can be installed everywhere (because its market share) (even on company machine). Thefore I can use my custom settings anywhere.
- If any web page does not work, I can edit arkenfox on the fly. But with LibreWolf or Mullvad this case is more difficult because I can not predict which settings are changed compared to default-Mozilla-build (I should read the documentation of LibreWolf or Mullvad).
- Firefox has Android build too. arkenfox also works there.

# privacy.resistFingerprinting (RFP) VS privacy.fingerprintingProtection (FPP)
RFP is more agresive then FPP.

# CanvasBlocker
Install CanvasBlocker extension. After the installation it shows some pre-defined settings. Ignore and close that page.

Only enable below APIs:
- Audio
- DOMRect
- SVG
- TextMetrics

Note: To disable CanvasAPI protection of CanvasBlocker, select "nothing".

Above enabled API-protections are only APIs which are not protecting by Firefox resist-fingerprint option. Therefor I protect them with CanvasBlocker extension. There are also some other APIs which are not protecting by resist-fingerprint, but protecting by CanvasBlocker. But I don't enable them because breaks most of the website I visit.

Allow this extension on "private browsing" mode. It should work when I open a URL in a new window (private mode).