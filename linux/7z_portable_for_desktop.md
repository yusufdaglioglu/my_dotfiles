# Making 7z portable 

This explanation is not for the official 7zip package. Its for pZip. (read the notes inside my tutorials repository.)

- download 7zip DEB package (the DEB package works for RPM systems)

- extract DEB file.

- Add this line top of usr/bin/7z:

  ```sh
  FULL_PATH_OF_7Z="$(which 7z)"
  exec "$(dirname $FULL_PATH_OF_7Z)/./../lib/p7zip/7z" "$@"
  ```

- Add this line to "$HOME/.profile" file:

  ```sh
  PATH="$PATH:$HOME/EXTRACTED_APPS/7z/usr/bin"
  ```
