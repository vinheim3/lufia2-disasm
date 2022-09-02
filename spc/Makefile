OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o

all: initialSPC.bin

build/wram.o: include/wram.s
	wla-spc700 -o $@ $<

build/%.o: code/%.s
	wla-spc700 -o $@ $<

initialSPC.bin: $(OBJS) $(RAM_OBJS)
	wlalink -S linkfile $@
