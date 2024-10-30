# Installation
Clone this repository in the home directory (i.e. /home/$USER )
````bash
git clone https://github.com/AllanValle/dotfiles.git
cd ~/dotfiles
stow nvim       # copies config into .config/nvim/ 
stow tmux       # copies config into .config/tmux and so on

````

# Neovim
NOTE: This configuration only works with neovim 0.5 or higher

## Installing nvim from unstable ppa
````bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
````
[Source](https://github.com/neovim/neovim/wiki/Installing-Neovim)

You have to install npm to be able to use the LSP functionality

## Installing nerdfonts
- Download latest [Fira Code Nerdfonts](https://github.com/ryanoasis/nerd-fonts/releases/latest).
- Unzip tar.xz or zip.
- Install ttf font using the font manager of your choice (e.g. font-manager in Ubuntu)

## Installing plugins
Use the command
````
:PackerUpdate
````
## Zotcite
### Install pyzotero
````
pip3 install pyzotero
````
### Enabling opening of zotcite attachments in Zotero

````bash
xdg-mime default zotero.desktop x-scheme-handler/Zotero
````

Add "--url % u" after the binary path of ~/.local/share/applications/zotero.desktop

# Download zk release from [github](https://github.com/zk-org/zk/releases)
Make sure that the binary is in PATH

# npm is needed for Mason.nvim to work correctly

# vimtex requires the installation of [tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/releases)

# install xclip
````bash
sudo apt install xclip
````

# install zotcite dependencies
````bash
sudo apt install python3-pyqt5 python3-poppler-qt5
python3 -m pip install --user --upgrade pynvim
````

# Create zk notebook
````bash
cd ~
zk init zk
````
Then, update the config.toml file
