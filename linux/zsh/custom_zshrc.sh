# If you use ZSH and you source this script to your "$HOME/.zshrc", ZSH it will automatically print:
# - the last exit-code if it's not success.
# - random 6 file (when you change the directory).
# - current directory full path (when you change the directory).

# ____ (4 times underline character) is using as a prefix for all parameters and functions.
# only in any case. we don't wanna override if any function/builtin/command already exist with same name.

function ____printExitCodeIfIsNotSuccess() {
  local ____LAST_EXIT_CODE="$?"

  # "-ne 0" --> if is different than 0
  if [[ "$____LAST_EXIT_CODE" -ne 0 ]]; then
    printf '%s' "last exit code: $____LAST_EXIT_CODE"
  fi
}

____do_executable_exist() {
  # do not use 'which' command to check if executable exist.
  # we prefer 'command' because it is POSIX standart.
  # reason why: https://stackoverflow.com/a/677212
  command -v "$1" >/dev/null 2>&1 || {
    return 1
  }
}

____COLOR_BLUE=""
____COLOR_RESET=""

if ____do_executable_exist "tput"; then
  ____TPUT_BOLD="$(tput bold)" # we prefer bold. text are cleaner/bigger.
  ____TPUT_WHITE="$(tput setaf 7)"
  ____COLOR_BLUE="$____TPUT_BOLD$____TPUT_WHITE$(tput setab 4)"
  ____COLOR_RESET="$(tput sgr 0)"
fi

# this is a standart function which is calling by zsh everytime directory changed.
function chpwd() {

  # do not check head and ls commands using  ____do_executable_exist.
  # This script should only call from your personal devices which should have installed those command.

  # this block is commented. It does the same as below code block which starts with "ls".
  # we keep this code in any case...
  # "head -6" trims only 6 lines of output
  # "." --> search files on current dir
  # "-name ." --> search regex. dot (.) is a special character to search all files.
  # find . -maxdepth 1 -mindepth 1 -name . -o -prune | head -6

  # "head -6" trims only 6 lines of output
  # -A --> do not print . and .. (dots)
  ls -A | head -6

  printf '%s\n' "$____COLOR_BLUE""pwd: $(pwd)$____COLOR_RESET"
}

# adds time and exit code to each line
PROMPT=${ret_status}'$(____printExitCodeIfIsNotSuccess)''%{$fg_bold[blue]%} %T % %{$reset_color%}'$PROMPT
