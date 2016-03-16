# classic-dvorak-layout

## Whats included?

This package provides configuration files for the following:

-   For the console (kbd) it provides a Classic Dvorak layout.
-   For Xserver it provides a Classic Dvorak International layout.
-   Optionally it also provides some extra shortcuts that the author uses.

X already provides a Classic Dvorak layout, but this package extends the `us(dvorak-int)` layout. I did this because I use
dead keys often in my native language.

## What are the differences between classic Dvorak and simplified Dvorak?

The differences between simplified Dvorak and classic Dvorak are limited to the numeric row and the first alphabetic row as described in the first paragraph of this article:

<http://lists.x.org/archives/xorg/2006-July/016530.html>

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


## Configuration:

The best way to configure your layout is to use `localectl`

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
