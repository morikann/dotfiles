#!/bin/sh

# ~/dotfilesが存在しなければリポジトリをダウンロード
if ! [ -e ~/dotfiles ]; then
  git clone https://github.com/morikann/dotfiles.git ~/dotfiles
fi

# ~/.zshrcが存在したら~/backupを作成し、そこに退避させる
if [ -e ~/.zshrc ]; then
  mkdir ~/backup && mv ~/.zshrc ~/backup
fi

# シンボリックリンクを作成する
ln -s ~/dotfiles/.zshrc ~/.zshrc
