# Firefox user-js
"__generated_personal_user.js__" is the config file which can be use on Firefox.

It based on arkenfox's user.js. The generator (shell script) filters some configs which breaks most of web pages which I visit them daily.

You can inject the configs to your Android via "javascript_for_execute_js_on_android.js" file.

# Test
You can test your browser from: https://github.com/arkenfox/user.js/wiki/Appendix-B-Test-Sites-%5BFingerprinting%5D

Other online utilities for test web browser: https://github.com/arkenfox/user.js/wiki/Appendix-A-Test-Sites

# CanvasBlocker
Install CanvasBlocker extension. After the installation it shows some pre-defined settings. Ignore and close that page.

Only enable below APIs:
- Audio
- DOMRect
- SVG
- TextMetrics

Allow this extension on "private browsing" mode. It should work when I open a URL in a new window (private mode).