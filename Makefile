CC := gcc
AR := ar
CFLAGS := -Wall -Wextra -O2

OBJS := tfb.o
 
.PHONY: build
build: libtfb.a

.PHONY: run
run: build
	echo This is not an executable :3

.PHONY: clean
clean:
	rm -f *.o test libtfb.a

.PHONY: test
test: build test.o

.PHONY: install
install: build
	echo Todo

.PHONY: commit
commit: clean
	git add .
	git commit
	git push

libtfb.a: $(OBJS)
	$(AR) -r $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@
