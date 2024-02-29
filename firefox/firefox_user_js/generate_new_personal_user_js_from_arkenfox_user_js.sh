#!/bin/bash

GENERATED_FILE="./generated_personal_user.js"
cp "./arkenfox_user.js" "$GENERATED_FILE" || exit 100
REMOVED_KEYWORD="removed XXX"
while IFS= read -r line; do
    # $line is the config-id
    line='user_pref\(\"'"$line"
    sed -r -i.bak "s/.*$line.*/\/\/ $line $REMOVED_KEYWORD /g" "$GENERATED_FILE" || exit 101
done <"./remove_list_arkenfox.js"
echo "// PERSONAL PREFS" >>"$GENERATED_FILE" || exit 102
cat "./additional_personal.js" >>"$GENERATED_FILE" || exit 103

# This file is created automatically
rm "$GENERATED_FILE.bak"