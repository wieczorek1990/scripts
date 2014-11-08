#!/bin/bash
if [ $# == 0 ]
then
  versions=`dpkg --list | grep -v 'extra' | grep -v 'linux-image-generic' | grep linux-image | tr -s ' ' | cut -f 2 -d ' ' | sed 's/linux-image-//' | sed 's/-generic//' | tr '\n' ' '`
  echo -e "Installed kernels:\n$versions"
  version=`uname -r | sed 's/-generic//'`
  echo -e "Current kernel:\n$version"
else
  versions="$*"
  packages=''
  for version in $versions
  do
    packages="$packages linux-headers-$version linux-headers-$version-generic linux-image-$version-generic linux-image-extra-$version-generic"
  done
  apt-get -s --purge autoremove $packages
  echo -e '\nHit CTRL+C to cancel.'
  read
  sudo apt-get --purge autoremove $packages -y
fi
