# See LICENSE file for copyright and license details.

install: ${PROJ}
	@echo installing kbd map into  /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@cp kbd/classic-dvorak.map /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@echo installing xkbd maps for classic-dvorak-intl, classic-dvorak-intl-custom and dvp-custom into /usr/share/X11/xkb/symbols/custom
	@cp xkb/classic-dvorak-intl.xkb /usr/share/X11/xkb/symbols/custom
	@cat xkb/classic-dvorak-intl-custom.xkb >> /usr/share/X11/xkb/symbols/custom
	@cat xkb/dvp-custom.xkb >> /usr/share/X11/xkb/symbols/custom
	@echo
	@echo Configuration details can be found here:
	@echo https://github.com/tjaartvdwalt/everything-dvorak

uninstall:
	@echo removing kbd map from /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@rm /usr/share/kbd/keymaps/i386/dvorak/classic-dvorak.map.gz
	@echo removing xkb map from /usr/share/X11/xkb/symbols/custom
	@rm /usr/share/X11/xkb/symbols/custom

install-user: ${PROJ}
	@echo installing xkb map into ${HOME}/.config/xkb/symbols/classic-dvorak-intl
	@cp xkb/classic-dvorak-intl.xkb ${HOME}/.config/xkb/symbols/classic-dvorak-intl
	@echo installing xkb map into ${HOME}/.config/xkb/symbols/classic-dvorak-intl-custom
	@cp xkb/classic-dvorak-intl-custom.xkb ${HOME}/.config/xkb/symbols/classic-dvorak-intl-custom
	@echo installing xkb map into ${HOME}/.config/xkb/symbols/dvp-custom
	@cp xkb/dvp-custom.xkb ${HOME}/.config/xkb/symbols/dvp-custom
	@echo
	@echo Configuration details can be found here:
	@echo https://github.com/tjaartvdwalt/everything-dvorak

uninstall-user:
	@echo removing xkb map from ${HOME}/.config/xkb/symbols/classic-dvorak-intl
	@rm ${HOME}/.config/xkb/symbols/classic-dvorak-intl
	@echo removing xkb map from ${HOME}/.config/xkb/symbols/classic-dvorak-intl-custom
	@rm ${HOME}/.config/xkb/symbols/classic-dvorak-intl-custom
	@echo removing xkb map from ${HOME}/.config/xkb/symbols/dvp-custom
	@rm ${HOME}/.config/xkb/symbols/dvp-custom

.PHONY: install uninstall
