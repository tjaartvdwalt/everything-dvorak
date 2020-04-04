# See LICENSE file for copyright and license details.

install: ${PROJ}
	@echo installing kbd map into  /usr/share/kbd/keymaps/i386/dvorak/dvorak-classic.map.gz
	@cp kbd/dvorak-classic.map /usr/share/kbd/keymaps/i386/dvorak/dvorak-classic.map.gz
	@echo installing xkbd maps for dvorak-classic-intl, dvorak-classic-intl-custom and dvp-custom into /usr/share/X11/xkb/symbols/custom
	@cp xkb/dvorak-classic-intl.xkb /usr/share/X11/xkb/symbols/custom
	@cat xkb/dvorak-classic-intl-custom.xkb >> /usr/share/X11/xkb/symbols/custom
	@cat xkb/dvp-custom.xkb >> /usr/share/X11/xkb/symbols/custom
	@echo
	@echo Configuration details can be found here:
	@echo https://github.com/tjaartvdwalt/everything-dvorak

uninstall:
	@echo removing kbd map from /usr/share/kbd/keymaps/i386/dvorak/dvorak-classic.map.gz
	@rm /usr/share/kbd/keymaps/i386/dvorak/dvorak-classic.map.gz
	@echo removing xkb map from /usr/share/X11/xkb/symbols/custom
	@rm /usr/share/X11/xkb/symbols/custom

install-user: ${PROJ}
	@echo installing xkb map into ${HOME}/.config/xkb/symbols/dvorak-classic-intl
	@cp xkb/dvorak-classic-intl.xkb ${HOME}/.config/xkb/symbols/dvorak-classic-intl
	@echo installing xkb map into ${HOME}/.config/xkb/symbols/dvorak-classic-intl-custom
	@cp xkb/dvorak-classic-intl-custom.xkb ${HOME}/.config/xkb/symbols/dvorak-classic-intl-custom
	@echo installing xkb map into ${HOME}/.config/xkb/symbols/dvp-custom
	@cp xkb/dvp-custom.xkb ${HOME}/.config/xkb/symbols/dvp-custom
	@echo
	@echo Configuration details can be found here:
	@echo https://github.com/tjaartvdwalt/everything-dvorak

uninstall-user:
	@echo removing xkb map from ${HOME}/.config/xkb/symbols/dvorak-classic-intl
	@rm ${HOME}/.config/xkb/symbols/dvorak-classic-intl
	@echo removing xkb map from ${HOME}/.config/xkb/symbols/dvorak-classic-intl-custom
	@rm ${HOME}/.config/xkb/symbols/dvorak-classic-intl-custom
	@echo removing xkb map from ${HOME}/.config/xkb/symbols/dvp-custom
	@rm ${HOME}/.config/xkb/symbols/dvp-custom

.PHONY: install uninstall
