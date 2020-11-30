#!/bin/bash

echo "# Install xcode from AppStore"
echo "# DownLoad setup shell from github"

echo "#"
echo "# Install xcode-command line tool"
echo "#"
sudo xcodebuild -license
sudo xcode-select --install

echo "#"
echo "# Install and Update homebrew "
echo "#"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

echo "#"
echo "# Install ansible"
echo "#"
echo "# -> Install ansible"
brew install ansible@2.8 # The homebrew_cask module has bug at 10.2.2+,
brew link ansible@2.8    # 10.2.1 > more later formula is 2.8

echo "#"
echo "# Setup Mac"
echo "#"
cd playbook
ansible-playbook --ask-become-pass setup.yml
cd ../

echo "#"
echo "# Manual Settings ..."
echo "#"
echo "# -> Register start-up apps manualy"
echo "# -> Fierwall On manualy"
echo "# -> ssh cofiguration"
echo "#    References: https://qiita.com/reflet/items/0c338df07d9f6c6ef776"
echo "# -> enable brew autoupdate (trial)"
echo "$ mkdir -p /Users/hogehoge/Library/LaunchAgents"
echo "$ brew autoupdate --start --upgrade --cleanup --enable-notification"
echo "# -> install visual studio code plugin"
echo "#    1. install `setting sync`"
echo "#    2. Sync my visual studio code settings"
