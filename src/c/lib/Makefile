.PHONY: all
all:
	$(MAKE) clean
	$(MAKE) libhello.a

.PHONY: clean
clean:
		rm -f *.o *.a

hello.o: hello.c
		gcc -Wall -c *.c

libhello.a: hello.o
		ar -cvq libhello.a *.o
