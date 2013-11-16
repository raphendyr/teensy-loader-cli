PREFIX = $(if $(DESTDIR),$(DESTDIR)/usr,$(if $(filter root,$(USER)),/usr/local,$(HOME)/.local))
BINDIR = $(PREFIX)/bin
LIBDIR = $(PREFIX)/lib/$(TARGET)

.PHONY: install
install: teensy_loader_cli
	install -D -T -m 0755 -o root $< $(BINDIR)/teensy-loader-cli

.DEFAULT_GOAL := teensy_loader_cli
