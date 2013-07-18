classic-dvorak-layout
=====================
This package provides configuration files for the Dvorak classic layout on a GNU/Linux system.

The differences are limited to the numeric row and the first alphabetic row as described in the first paragraph of this article:

http://lists.x.org/archives/xorg/2006-July/016530.html

There are two keyboard mappings that needs to be defined in order to have a complete Dvorak classic experience. I use Arch Linux, the location of your config files may be slightly different.

kbd
---
To change your keyboard mapping for the console you need to gzip the file 

    kbd/classic-dvorak.map

    gzip -c kbd/classic-dvorak.map > classic-dvorak.map.gz

Now copy the .gz file to the mappings dir

    cp classic-dvorak.map.gz /usr/share/kbd/keymaps/i386/dvorak/

To activate your new mapping you need to edit/create

    /etc/vconsole.conf

the file should contain at least the following line

    KEYMAP=classic-dvorak

For more info reference: https://wiki.archlinux.org/index.php/KEYMAP

xkbd
----
For your X session xkbd already contains a Classic Dvorak layout, however we wanted to provide a Dvorak Classic international with dead keys.


