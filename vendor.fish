#!/usr/bin/env fish

while read id
  echo "SUBSYSTEM==\"usb\", ATTRS{idVendor}==\"$id\", MODE=\"0666\""
end < vendor
