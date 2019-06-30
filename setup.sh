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
echo "# -> Install pip"
sudo easy_install pip
sudo pip install -U pip
echo "# -> Install ansible"
sudo pip install ansible

echo "#"
echo "# Setup Mac"
echo "#"
cd playbook
ansible-playbook --ask-become-pass setup.yml
cd ../

echo "#"
echo "# Manual Settings ..."
echo "#"
echo "# -> Install below apps manualy"
echo "#    -> Amphetamine"
echo "#    -> Pocket"
echo "#    -> LINE"
echo "# -> Register start-up apps manualy"
echo "# -> Fierwall On manualy"
echo "# -> ssh cofiguration"
echo "#    References: https://qiita.com/reflet/items/0c338df07d9f6c6ef776"
