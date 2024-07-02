# $HOME/.profile file
# or
# $HOME/.zshrc file

source "$HOME/custom_zshrc.sh"

CC_APPS_HOME="/run/media/userx/drivex/HOME"
CC_SCRIPTS_FILE_PATH="$HOME/cc_scripts/release/cc_scripts.sh"
source "$CC_SCRIPTS_FILE_PATH"

CC_STANDALONE_APPS_PATH_ROOT="/run/media/userx/drivex/EXTRACTED_APPS"

PATH="$PATH:$CC_STANDALONE_APPS_PATH_ROOT/node-v20.14.0-linux-x64/bin"

ANDROID_HOME="$CC_STANDALONE_APPS_PATH_ROOT/android_sdk_linux"
export ANDROID_HOME
PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

