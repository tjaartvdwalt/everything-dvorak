classic-dvorak-layout
=====================
This package provides configuration files for the Dvorak classic layout on a GNU/Linux system.

The differences between simplified Dvorak and Dvorak classic are limited to the numeric row and the first alphabetic row as described in the first paragraph of this article:

http://lists.x.org/archives/xorg/2006-July/016530.html

There are two separate mappings that needs to be defined, kbd for typing in a terminal, and xkbd when using X. I use Arch Linux, the location of your config files may be slightly different.

kbd
---
To change your keyboard mapping for the console you need to gzip the file 

    kbd/classic-dvorak.map


    gzip -c kbd/classic-dvorak.map > classic-dvorak.map.gz

Now copy the gzipped file to the mappings dir

    cp classic-dvorak.map.gz /usr/share/kbd/keymaps/i386/dvorak/

To activate your new mapping you need to edit/create

    /etc/vconsole.conf

the file should contain at least the following line

    KEYMAP=classic-dvorak

For more info: https://wiki.archlinux.org/index.php/KEYMAP

xkbd
----
For your X session xkbd already contains a classic Dvorak layout, however we provide a classic Dvorak international with dead keys. (We add it as a variant of the English US layout)

First append the contents of the file
    
    xkbd/us-dvorak-int.xkb
    
to
    /usr/share/X11/xkb/symbols/us

whith

    cat xkbd/us-dvorak-int.xkb >> /usr/share/X11/xkb/symbols/us

You also need to edit the file
    
    /usr/share/X11/xkb/rules/evdev.xml

in order to activate your new layout.
Add a new variant to the en/US layout. Easiest is to search for "dvorak-classic" and add the following xml just below that section.

        <variant>
          <configItem>
            <name>dvorak-classic-intl</name>
            <description>English (classic Dvorak, international with dead keys)</description>
          </configItem>
        </variant>

Log out of your current X-session, and when you log back the layout should be available. (If your X fails to start, check that the syntax of the xml file is valid)

For more info: https://wiki.archlinux.org/index.php/XKB

Other customizations
--------------------
