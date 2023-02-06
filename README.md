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
````bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf?raw=true
````
Intall the ttf font using the font manager of your choice (e.g. font-manager in Ubuntu)

## Installing plugins
Use the command
````
:PackerUpdate
````


