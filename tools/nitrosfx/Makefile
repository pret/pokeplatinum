CC = gcc

CFLAGS = -Wall -Wextra -Werror -Wno-sign-compare -std=gnu17 -DPNG_SKIP_SETJMP_CHECK

SRCS = main.c util.c sbnk.c sdat.c sseq.c swar.c swav.c cJSON.c
OBJS = $(SRCS:%.c=%.o)

.PHONY: all clean

all: nitrosfx
	@:

nitrosfx: $(SRCS) util.h sbnk.h sseq.h sdat.h swar.h swav.h
	$(CC) $(CFLAGS) -O2 $(SRCS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) -r nitrosfx nitrosfx.exe $(OBJS)
