OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o
DEFINES = -D HACK
DEFINES =

all: lufia2.sfc

build/wram.o: include/wram.s
	wla-65816 $(DEFINES) -o $@ $<

build/%.o: code/%.s
	wla-65816 $(DEFINES) -o $@ $<

lufia2.sfc: $(OBJS) $(RAM_OBJS)
	wlalink -S linkfile $@
