# Everything Dvorak

## Whats included?

This package provides several keymapping files related to the Dvorak keyboard layout

### kbd

-   Classic Dvorak layout

### xkb

-   Classic Dvorak International layout
-   Customized Classic Dvorak layout (provides tenkey shortcuts, by holding down Alt Gr)
-   Customized Programmers Dvorak layout (shortcuts similar to above)

## Installation

### Requirements

-   [make](https://www.gnu.org/software/make/)

## System Install

This option will install kbd layout into `/usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz` the xkb layouts into `/usr/share/X11/xkb/symbols/custom`

### Install

```bash
make install
```

### Configure

#### kbd

```bash
localectl --no-convert set-keymap classic-dvorak
```

_Note:_ You may need to restart your machine for the new locale to take effect.

### xkb

```bash
localectl --no-convert set-x11-keymap custom "" LAYOUT_NAME ctrl:swapcaps
```

where `LAYOUT_NAME` can be one of

-   dvorak-classic-intl
-   dvorak-classic-intl-custom
-   dvp-custom

_Notes:_

-   `--no-convert` prevents localectl from converting the keymap between the console and X11
-   the "" is where your keyboard layout would go, but we don't want to configure that manually, so we leave it blank.
-   `ctrl:swapcaps` swaps ctrl and capslock keys

## User Installation

I use this method for [Sway](https://swaywm.org/), if you are using Xserver, you may have luck trying this method from the Arch Wiki.
https://wiki.archlinux.org/index.php/X_keyboard_extension#Using_keymap

### Install

```bash
make install-user
```

### Configure

Add the following section in your Sway configuration file (`~/.config/sway/config`) 

```
input type:keyboard {
    xkb_layout dvp-custom
}
```

This sets the layout for all keyboards. If you want to target a specific keyboard, get its indentifier, by running

```bash
swaymsg -t get_inputs
```

and replace `type:keyboard` with the keyboard's identifier

## Frequently Asked Questions ##

### What are the differences between classic Dvorak and simplified Dvorak?

The differences between simplified Dvorak and classic Dvorak are limited to the numeric row and the first alphabetic row as described in the first paragraph of this article:

<http://lists.x.org/archives/xorg/2006-July/016530.html>

## What is included in the Custom Layouts?

This custom layouts defines my personal shortcuts.
When holding down Alt GR, you get arrow keys in an inverted-T on your right hand.

| -------- | ------- | -------- | --------- |
| (g) home | (c) ↑   | (r) pgup |           |
| (h) ←    | (t) ↓   | (n) →    | (s) bcksp |
| (m) end  | (w)     | (v) pgdn |           |

### Switching between profiles in XServer

To switch between normal qwerty and my layout you must add the `us` keymap in `localectl`:

```
localectl --no-convert set-x11-keymap custom,us "" dvorak-classic-custom ctrl:swapcaps
```

To switch to layout `custom( dvorak-classic-custom)` use:

```
setxkbmap -layout custom\(dvorak-classic-custom\)
```

To switch to `us(intl)`:

```
setxkbmap -layout us\(intl\)
```

