#!/bin/bash
if [ $# == 0 ]
then
  echo 'Installed kernels:'
  dpkg --list | grep -v 'extra' | grep -v 'linux-image-generic' | grep linux-image | tr -s ' ' | cut -f 2 -d ' ' | sed 's/linux-image-//' | sed 's/-generic//'
  version=`uname -r | sed 's/-generic//'`
  echo -e "Current kernel:\n$version"
else
  versions=`echo "$1" | tr '\n' ' '`
  packages=''
  for version in $versions
  do
    packages="linux-headers-$version linux-image-$version-generic linux-image-extra-$version-generic $packages"
  done
  apt-get -s --purge autoremove "$packages"
  echo -e '\nHit CTRL+C to cancel.'
  read
  sudo apt-get --purge autoremove "$packages"
fi
