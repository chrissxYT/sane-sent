# sent version
VERSION = c001

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# includes and libs
INCS = -I. -I${X11INC} -I${X11INC}/freetype2
INCS += -I/usr/include -I/usr/include/freetype2
INCS += -I/usr/local/include -I/usr/local/include/freetype2
LIBS = -L/usr/lib -lc -lm -L${X11LIB} -lXft -lfontconfig -lX11 -L/usr/local/lib

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_XOPEN_SOURCE=600
CFLAGS += -std=c99 -pedantic -Wall -O2 ${INCS} ${CPPFLAGS}
LDFLAGS += ${LIBS}

# compiler and linker
CC ?= cc
