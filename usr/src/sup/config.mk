# Install paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

# Stock FLAGS
CFLAGS = -Os -Wall -pedantic
LDFLAGS = -static -s

.c.o:
	$(CC) $(CFLAGS) -c $<
