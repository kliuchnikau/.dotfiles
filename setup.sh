#!/bin/bash

for FILE_NAME in $(find . -type f -name ".*" | sed 's|\./||')
  do
    ln -s ~/.dotfiles/$FILE_NAME ~/$FILE_NAME
  done


if [[ $OSTYPE == darwin* ]]; then
  # Mac stuff
  curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

  ln -s ~/.dotfiles/.bashrc ~/.bash_profile
fi

curl https://raw.github.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh

echo "Aliaksei Kliuchnikau's dotfiles installed successfully"
