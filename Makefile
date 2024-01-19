UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
  format=macho64
  CC=arch -x86_64 gcc
else
  format=elf64
  CC=gcc
endif

objs = \
	main.o \
	print.o \
	values.o \
	io.o

.PHONY: submit.zip

submit.zip:
	zip $@ -r * \
		-x \*\*.[os] -x \*\*~ -x \*\*zip \
		-x \*\*Zone.Identifier -x \*\*compiled\*\*

runtime.o: $(objs)
	ld -r $(objs) -o runtime.o

%.run: %.o runtime.o
	$(CC) runtime.o $< -o $@

.c.o:
	$(CC) -fPIC -c -g -o $@ $<

.s.o:
	nasm -g -f $(format) -o $@ $<

%.s: %.rkt
	cat $< | racket -t compile-stdin.rkt -m > $@

clean:
	rm *.o *.s *.run

%.test: %.run %.rkt
	@test "$(shell ./$(<))" = "$(shell racket $(word 2,$^))"
