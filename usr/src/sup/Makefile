# sup: simple user privileges
# See LICENSE file for copyright and license details.
.POSIX:

include config.mk

BIN = sup
OBJ = $(BIN:=.o) sha256.o

all: $(BIN)

$(OBJ): config.h config.mk

config.h:
	cp config.def.h config.h

$(BIN): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $@

clean:
	rm -f $(BIN) $(OBJ)

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f sup $(DESTDIR)$(PREFIX)/bin
	chmod 4711 $(DESTDIR)$(PREFIX)/bin/$(BIN)
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	sed "s/VERSION/$(shell git rev-parse --short HEAD)-git/" < $(BIN).1 \
		> $(DESTDIR)$(MANPREFIX)/man1/$(BIN).1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/$(BIN).1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(BIN)
	rm -f $(DESTDIR)$(MANPREFIX)/man1/$(BIN).1
