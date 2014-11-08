#!/bin/bash
# Deletes orphaned and obsolete packages.
# You can filter out packages that you don't want to be removed by providing them as arguments.

orphan=$(deborphan | tr '\n' ' ')
obsolete=$(aptitude search ?obsolete --disable-columns | sed -r 's/^.{3}//' | tr -s ' ' | cut -d ' ' -f 1 | tr '\n' ' ')
packages="$orphan $obsolete"
if [ $# -ne 0 ]
then
  filter="$*"
  s=`echo $filter | tr ' ' '|'`
  packages=`echo $packages | sed -E "s/$s//g"`
fi
echo "Orphan: $orphan"
echo "Obsolete: $obsolete"
echo "Packages: $packages"
apt-get -s --purge autoremove $packages
echo -e '\nPress CTRL+C to cancel.'
read
sudo apt-get --purge autoremove $packages -y
