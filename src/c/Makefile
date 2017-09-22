.PHONY: all
all: 
	$(MAKE) clean
	$(MAKE) hello

.PHONY: clean
clean: 
	rm -f hello

hello: subsystem
		gcc -Wall --static -I./include -L./lib -o hello hello.c -lhello

subsystem:
		$(MAKE) -C lib