user_pref("dom.webnotifications.enabled", false); // I personaly don't need this feature.
user_pref("clipboard.autocopy", false); // this feature is exist only on linux. if autocopy enabled, firefox automatically copies text on every selection. I personaly don't need this feature.
user_pref("intl.locale.requested", "en-US"); // language of interface of firefox. This is hidden (not visible) on about:config page.
user_pref("extensions.pocket.enabled", false); // save article feature of firefox. I personaly don't need this feature.
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("browser.gesture.swipe.left", "cmd_scrollLeft"); // overrides "go previous page" via touch device swipe left.
user_pref("browser.gesture.swipe.right", "cmd_scrollRight"); // overrides "go next page" via touch device swipe right.
user_pref("browser.urlbar.autoFill", false); // firefox suggest each favorite's domain on URL bar. this prevent this unused feature.
user_pref("media.videocontrols.picture-in-picture.video-toggle.always-show", true); // in some cases (short-timed or small-sized videos) firefox does not enable popup mode.
user_pref("devtools.netmonitor.responseBodyLimit", 0); // large reponse are truncating by firefox. if its truncated there is no way to copy whole response as string. this config disables the automatic trancate feature.

/* OVERRIDES */
/* 4502: set new window size rounding max values [FF55+]
  * [SETUP-CHROME] sizes round down in hundreds: width to 200s and height to 100s, to fit your screen
  * [1] https://bugzilla.mozilla.org/1330882 ***/
user_pref("privacy.window.maxInnerWidth", 1800);
user_pref("privacy.window.maxInnerHeight", 1000);
