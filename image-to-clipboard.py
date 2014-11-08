#!/usr/bin/env python

import sys
from gi.repository import Gtk, Gdk, GdkPixbuf

def store(pixbuf):
        clipboard = Gtk.Clipboard.get(Gdk.SELECTION_CLIPBOARD)
        clipboard.set_image(pixbuf)
        clipboard.store()

def copy_image(f):
    image = Gtk.Image.new_from_file(f)
    if image.get_storage_type() == Gtk.ImageType.PIXBUF:
        pixbuf = image.get_pixbuf()
        store(pixbuf)
    else:
        print("Copying failed")

def copy_pixbuf(data):
    loader = GdkPixbuf.PixbufLoader()
    loader.write(data)
    loader.close()
    pixbuf = loader.get_pixbuf()
    store(pixbuf)

if sys.stdin.isatty():
    if len(sys.argv) != 2:
        print("Usage: image-to-clipboard.py image")
    else:
        f = sys.argv[1]
        copy_image(f);
else:
    data = sys.stdin.read()
    copy_pixbuf(data)

