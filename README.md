# Everything Dvorak

*This doc needs updating*

## Whats included?

This package provides several keymapping files related to the Dvorak keyboard layout

- kbd layout Classic Dvorak layout kbd
- xkb layout for Classic Dvorak International
- xkb layouts providing tenkey shortcuts on top of Classic Dvorak International, and Programmers Dvorak Layouts.

## Installation ##
To install your new keymap you need  the `make` utility installed.
```(bash)
make install
```

## System Wide Installation ##

### Install ###

```bash
sudo make install
```

### Configure ###

## User Installation ##

### Install ###

```bash
make install-user
```

### Configure ###

```bash
xkbcomp dvp-custom
```

## Configuration:

The easiest way to configure your layout is by using `localectl`

### kbd

    sudo localectl --no-convert set-keymap classic-dvorak

After a restart this will take effect.

### xkbd

    sudo localectl --no-convert set-x11-keymap custom "" dvorak-classic-custom ctrl:swapcaps

1.  Notes

    -   `--no-convert` stops localectl from converting the keymap between the console and X11
    -   the "" is where your keyboard layout would go, but I don't manually want to configure that, so I leave it blank.
    -   `dvorak-classic-custom` is my default layout in this keymap
    -   I swap ctrl and capslock using `ctrl:swapcaps`

### Switching between profiles in X11

To switch between normal qwerty and my layout you must add the `us` keymap in `localectl`:

    localectl --no-convert set-x11-keymap custom,us "" dvorak-classic-custom ctrl:swapcaps

To switch to layout `custom( dvorak-classic-custom)` use:

    setxkbmap -layout custom\(dvorak-classic-custom\)

To switch to `us(intl)`:

    setxkbmap -layout us\(intl\)



## Further Reading  ##

### What are the differences between classic Dvorak and simplified Dvorak? ###

The differences between simplified Dvorak and classic Dvorak are limited to the numeric row and the first alphabetic row as described in the first paragraph of this article:

<http://lists.x.org/archives/xorg/2006-July/016530.html>

Classic Dvorak Layout

## What is dvorak-classic-custom?

This custom keymap defines my personal shortcuts. It boils down to this:
When holding down Right Alt, you get arrow keys in an inverted-T on your right hand.

The following keys:

|   |   |   |   |   |
|---|---|---|---|---|
|g  |c  |r  |	|   |  	
|h  |t  |n  |s  |\  |
|m  |   |v  |   |   |	

maps to:

|     |   |     |      |       |
|-----|---|-----|------|-------|
|home |↑  |pgup | 	   |       |	
|←   |↓  | →   |bcksp |return |
|end  |   |pgdn |	   |       |	



