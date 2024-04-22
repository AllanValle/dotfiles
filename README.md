# Installation
Clone this repository in the home directory (i.e. /home/$USER )
````bash
git clone https://github.com/AllanValle/dotfiles.git
cd ~/dotfile
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

## Installing nerdfonts
- Download latest [Fira Code Nerdfonts](https://github.com/ryanoasis/nerd-fonts/releases/latest).
- Unzip tar.xz or zip.
- Install ttf font using the font manager of your choice (e.g. font-manager in Ubuntu)

## Installing plugins
Use the command
````
:PackerUpdate
````
# Enabling opening of zotcite attachments in Zotero

````bash
xdg-mime default zotero.desktop x-scheme-handler/Zotero
````

Add "--url % u" after the binary path of ~/.local/share/applications/zotero.desktop


