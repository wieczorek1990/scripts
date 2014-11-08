#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
data=/media/data
dropbox=$data/Dropbox
backup=$dropbox/Backup/Ubuntu
home=$backup/home/luke

function append {
  phraze=$1
  file=$2
  grep -q "$phraze" "$file"
  if [ $? -ne 0 ]
  then
    echo "$phraze" >> "$file"
  fi
}
function link {
  if [ $# -eq 2 ]
  then
    ln -fs "$1/$2"
  else
    ln -fs "$1/$2" "$3"
  fi
}
function linkb {
  if [ ! -h "$1" ]
  then
    echo "Backup of $1:"
    cat "$1"
    sudo mv "$1" "$1.bak"
  fi
  sudo ln -fs "$backup/$1" "$1"
}
function linkd {
  link "$data" $*
}
function linkdb {
  link "$dropbox" $*
}
function linkh {
  link "$home" $*
}

cd ~
rm Muzyka Szablony
append 'source ~/.bashrc.after' .bashrc
linkd Muzyka
linkdb
linkdb Skrypty
linkh .bash_profile.after
linkh .bashrc.after
linkh .gitconfig
linkh .hidden
linkh .inputrc
linkh .octaverc
linkh .rvmrc
linkh .vimrc.after
linkh Szablony
linkb /etc/apt/sources.list
linkb /etc/X11/xorg.conf.d/20-nvidia.conf
linkb /etc/default/grub /etc/default/
linkb /usr/share/desktop-base/grub_background.sh
cd "$data/Obrazy/Pulpit"
cp wallpaper-536156.jpg wallpaper-1747980.jpg ~/Obrazy/
sudo mkdir -p /usr/share/images/grub/
sudo cp $home/Obrazy/wallpaper-536156.jpg /usr/share/images/grub/
sudo update-grub
