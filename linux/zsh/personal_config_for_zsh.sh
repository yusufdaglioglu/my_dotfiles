######################################
# install zsh
######################################
# do not install zsh with nix or other package managers. we dont know the side effects.
sudo apt-get install zsh

## make default shell.
## you should re-login to see zsh as default shell.
## fedora will ask you to install chsh package. do it.
## on ubuntu it is installed by default.
chsh -s /bin/zsh

######################################
# install oh-my-zsh
######################################
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

######################################
# install zsh-syntax-highlighting
######################################
git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/zsh-syntax-highlighting"

printf '%s' '

source "$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

' >>"$HOME/.zshrc"

######################################
# add my custom zshrc file
######################################
git clone "https://github.com/yusufdaglioglu/custom_zshrc.git" "$HOME/custom_zshrc"

printf '%s' '

source "$HOME/custom_zshrc/custom_zshrc.sh"

' >>"$HOME/.zshrc"
