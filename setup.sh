#!/bin/bash

for FILE_NAME in $(find . -type f -name ".*" | sed 's|\./||')
  do
    ln -s ~/.dotfiles/$FILE_NAME ~/$FILE_NAME
  done

echo "Aliaksei Kliuchnikau's dotfiles installed successfully"
