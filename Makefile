PREFIX ?= /usr/local

install:
	install -D -m 755 dc-update $(PREFIX)/bin/dc-update

uninstall:
	rm -f $(PREFIX)/bin/dc-update
