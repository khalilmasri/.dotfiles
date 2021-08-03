# cd ~
cd ~

# update all ------------------------------------------------------------------------------------------------------------------------------------------
sudo apt update 
sudo apt upgrade
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
sudo apt-get --reinstall install python

# npm and node.js -------------------------------------------------------------------------------------------------------------------------------------
# First, clear the npm cache:
npm cache clean -f
# Install n, Node’s version manager:
npm install -g n
# Install the latest stable version:
sudo n stable

# install vim -----------------------------------------------------------------------------------------------------------------------------------------
sudo apt install vim

# autojump --------------------------------------------------------------------------------------------------------------------------------------------
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
cd ~

# install ctags ---------------------------------------------------------------------------------------------------------------------------------------
sudo apt-get install ctags

# install c language servers --------------------------------------------------------------------------------------------------------------------------
sudo apt install ccls

# taglist ---------------------------------------------------------------------------------------------------------------------------------------------
sudo apt install wget
wget https://github.com/yegappan/taglist/archive/refs/heads/master.zip ~/Downloads
# zsh and tmux -----------------------------------------------------------------------------------------------------------------------------------------
sudo apt install zsh
sudo apt update zsh
sudo apt install -y fonts-font-awesome
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# tmux
sudo apt install tmux
# my dotfiles
git clone https://github.com/khalilmasri/.dotfiles.git
# source tmux
tmux source .tmux.conf
# change default shell to zsh
chsh

# FZF and related -----------------------------------------------------------------------------------------------------------------------------------------
sudo apt install fzf
sudo apt install ripgrep
sudo apt install universal-ctags
sudo apt install silversearcher-ag
sudo apt install fd-find

# Make testing ---------------------------------------------------------------------------------------------------------------------------------------------
sudo apt install check
sudo ln -s /usr/local/lib/libcheck.so.0 /usr/lib/libcheck.so.0

