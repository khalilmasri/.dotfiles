## ------ DEB
# cd ~
# cd ~
# 
# # update all ------------------------------------------------------------------------------------------------------------------------------------------
# sudo apt update 
# sudo apt upgrade
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# sudo apt-get --reinstall install python
# 
# # install ctags ---------------------------------------------------------------------------------------------------------------------------------------
# sudo apt-get install ctags
# 
# # install c language servers --------------------------------------------------------------------------------------------------------------------------
# sudo apt install ccls
# 
# # taglist ---------------------------------------------------------------------------------------------------------------------------------------------
# sudo apt install wget
# wget https://github.com/yegappan/taglist/archive/refs/heads/master.zip ~/Downloads
# # zsh and tmux -----------------------------------------------------------------------------------------------------------------------------------------
# sudo apt install zsh
# sudo apt update zsh
# sudo apt install -y fonts-font-awesome
# # oh my zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# # autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# # syntax highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# # powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# # tmux
# sudo apt install tmux
# # my dotfiles
# git clone https://github.com/khalilmasri/.dotfiles.git
# # source tmux
# tmux source .tmux.conf
# # change default shell to zsh
# chsh
# 
# # FZF and related -----------------------------------------------------------------------------------------------------------------------------------------
# sudo apt install fzf
# sudo apt install ripgrep
# sudo apt install universal-ctags
# sudo apt install silversearcher-ag
# sudo apt install fd-find
# 
# # Make testing ---------------------------------------------------------------------------------------------------------------------------------------------
# sudo apt install check
# sudo ln -s /usr/local/lib/libcheck.so.0 /usr/lib/libcheck.so.0
# 
# # Install colorscript
# git clone https://gitlab.com/dwt1/shell-color-scripts.git
# cd shell-color-scripts
# rm -rf /opt/shell-color-scripts || return 1
# sudo mkdir -p /opt/shell-color-scripts/colorscripts || return 1
# sudo cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
# sudo cp colorscript.sh /usr/bin/colorscript

#### -------------- ARCH
# Needed packages -------------------------------
yes | sudo pacman -S xf86-video-fbdev xorg xorg-xinit nitrogen picom
yes | sudo pacman -S alacritty neofetch firefox xmonad xmonad-contrib xmobar
yes | sudo pacman -S base-devel git xterm dmenu 

# npm and node.js -------------------------------------------------------------------------------------------------------------------------------------
# First, clear the npm cache:
npm cache clean -f
# Install n, Node’s version manager:
npm install -g n
# Install the latest stable version:
sudo n stable

# Install python --------------------------------
yes | sudo pacman -S python 

# Get yay ---------------------------------------
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# install vim -----------------------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S vim

# autojump --------------------------------------------------------------------------------------------------------------------------------------------
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
cd ~

# install ctags ---------------------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S ctags

# install c language servers --------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S ccls

# taglist ---------------------------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S wget
wget https://github.com/yegappan/taglist/archive/refs/heads/master.zip ~/Downloads
# zsh and tmux -----------------------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S zsh tmux ttf-hack ttf-font-awesome
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# source tmux
tmux source .tmux.conf

# FZF and related -----------------------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S fzf
yes | sudo pacman -S ripgrep
yay -S universal-ctags-git
yes | sudo pacman -S the_silver_searcher
yes | sudo pacman -S fd

# Make testing ---------------------------------------------------------------------------------------------------------------------------------------------
yes | sudo pacman -S check
sudo ln -s /usr/local/lib/libcheck.so.0 /usr/lib/libcheck.so.0

# Install colorscript
git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
rm -rf /opt/shell-color-scripts || return 1
sudo mkdir -p /opt/shell-color-scripts/colorscripts || return 1
sudo cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
sudo cp colorscript.sh /usr/bin/colorscript


