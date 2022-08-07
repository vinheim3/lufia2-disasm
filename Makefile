OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o

all: lufia2.sfc

build/wram.o: include/wram.s
	wla-65816 -o $@ $<

build/%.o: code/%.s
	wla-65816 -o $@ $<

lufia2.sfc: $(OBJS) $(RAM_OBJS)
	wlalink -S linkfile $@
