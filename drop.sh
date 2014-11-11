#!/bin/bash
# How to use it:
# Choose an email prefix
email_prefix=u
# Generate a list o user mails starting with email_prefix, e.g.
# for user_index in `seq 100 131`
# do
#   echo "my_email_prefix${user_index}@dispostable.com, "
# done
# Send invitations to them on dropbox website:
# https://www.dropbox.com/referrals
# Create a new user named tmp, and login as tmp
user=tmp
# Run this script
if [ $# -ne 1 ]
  echo 'Usage: drop.sh user_index'
  exit 1
fi
user_index="$1"
cd /home
sudo killall dropbox
sudo rm -rf $user/* $user/.*
~/Skrypty/next_mac.sh
sleep 12
# Register through dispostable.com
google-chrome --incognito http://www.dispostable.com/inbox/${email_prefix}${user_index}
# Run dropbox, finish registration and rerun the script if you want more
# Enjoy extra dropbox space
# Do this 32 times and you're done
