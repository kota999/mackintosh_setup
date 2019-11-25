# mackintosh_setup
## Overview
Setup mackintosh script for clean-installed OSX.

## Dependencies
### Software
 + Xcode

### Environment
Below setting is "off".
 + "System Preferences" -> "Energy Saver"
   + "Computer sleep"
   + "Display sleep"

## Usage
    sh setup.sh
    sudo reboot

## Features
### Installed Software (App)
[Show here](./playbook/roles/brew/cask/vars/main.yml)

### Installed Software (Command Tools)
Show below.
 + [From Brew](./playbook/roles/brew/module/vars/main.yml)
 + anyenv
   + ndenv
     + [versions](./playbook/roles/anyenv/ndenv/vars/main.yml)
   + pyenv
     + [versions](./playbook/roles/anyenv/pyenv/vars/main.yml)
   + rbnev
     + [versions](./playbook/roles/anyenv/rbenv/vars/main.yml)

### Software Settings
 + Dock
   + Orientation of dock is right
   + Icon-size is smaller in dock
 + Finder
   + Show all files
   + Show file extension
   + Show the status-bar and the path-bar, tab-bar
   + Initial Path is $HOME on opening new finder window
 + Trackpad
   +  Enable right click with two-finger clicking
   +  Enable touch-click
   +  Setting fastest-speed of trackpad's moving
 + MenuBar
   + Show percentage in battey's icon
   + Set clock's fomat is "H:mm"
 + Defaults Shell
   + zsh
     + my zsh config [from](https://github.com/kota999/dotfiles/blob/master/zshrc)
 + tmux config
   + Change keybind : C-b to C-t
   + Change keybind : move terminal tile is C-t + ↑/↓/→/←
 + iterm2
   + download iterm2 preferences's general-settings to $HOME/dotfiles
   + download solarized: color-theme to $HOME/dotfiles
 + vim
   + neobundle
   + neocomplete
   + neocomplcache
   + neosnippet
   + unite
   + nerdtree
   + nerdcommenter
   + YankRing
   + vim-easymotoin
   + vim-quickrun
   + vim-markdown
   + previm
   + [and so on, show detail](https://github.com/kota999/dotfiles/blob/master/vim/vimrc)
