
CC          = gcc
N           = 800000
pointer     = UINTPTR_TYPE
OPTLEVEL	= -O2
memory      = "\"Main memory (heap)\""
CFLAGS+= -D$(pointer) -DCOMPILER_FLAGS="\"$(OPTLEVEL)\"" -DMEM_LOCATION=$(memory) -I./include
LIB := liblabex2.a
TARGET = LabEx2
# ----------------------------------------------------------------------------
SRCS = src/core_main.c src/core_list_join.c src/core_matri.c src/core_portme.c src/core_state.c src/core_util.c

# add more compiler configurations as required
OBJS = $(SRCS:.c=.o)
# add the targets and rules as required

all:

run:
	./bin/coremark 0x0 0x0 0x66 $(N) 7 1 2000

.PHONY:clean
clean:
	rm -rf bin

