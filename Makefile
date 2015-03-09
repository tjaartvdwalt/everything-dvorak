# classic-dvorak-int-layout
# See LICENSE file for copyright and license details.

install: ${PROJ}
	@echo installing kbd map into  /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@cp kbd/classic-dvorak.map /usr/share/kbd/keymaps/i386/dvorak/
	@echo installing xkbd map into /usr/share/X11/xkb/symbols/custom
	@cp xkbd/dvorak-classic-intl.xkb /usr/share/X11/xkb/symbols/custom
	@echo 
	@echo Configuration details can be found here:
	@echo https://github.com/tjaartvdwalt/classic-dvorak-int-layout


uninstall:
	@echo removing KBD map from /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@rm /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@echo removing XKBD map from /usr/share/X11/xkb/symbols/custom

.PHONY: install uninstall
