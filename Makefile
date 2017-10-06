
.PHONY: all clean install help mrproper

.SUFFIXES:

SRC=helloworld.c
OBJ = helloworld.o

#CC=gcc
CFLAGS=-Wall
EXEC=helloworld


all: helloworld	
	
helloworld: helloworld.o
	$(CC) helloworld.o -o $(EXEC) $(LDFLAGS)
	
%.o: %.c 
	$(CC) $(CFLAGS) -c $< -o $@

clean: 
	-rm -f $(EXEC) *.o *~
	
install:
	cp helloworld $(DESTDIR)/bin/helloworld
	
help:
	@echo "Available targets : all, install, clean, mrproper"

mrproper: clean
	rm -rf $(EXEC)
