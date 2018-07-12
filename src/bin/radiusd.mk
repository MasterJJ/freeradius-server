TARGET	:= radiusd
SOURCES := \
    radiusd.c \
    radmin.c

SRC_CFLAGS	:= $(LIBREADLINE_CFLAGS)

TGT_INSTALLDIR  := ${sbindir}
TGT_LDLIBS	:= $(LIBS) $(LCRYPT) $(SYSTEMD_LIBS) $(LIBREADLINE)
TGT_LDFLAGS	:= $(LDFLAGS) $(SYSTEMD_LDFLAGS) $(LIBREADLINE_LDFLAGS)
TGT_PREREQS	:= $(LIBFREERADIUS_SERVER) libfreeradius-io.a libfreeradius-util.a