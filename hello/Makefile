#
# Makefile for hello.s
#
# Author: Marc Durocher
# Creation Date: 2016
#

CC = gcc
AS = as


all: hello

hello.o:
	$(AS) -o hello.o hello.s

hello: hello.o
	$(CC) -o hello hello.o

clean:
	rm -rf *.o

mrproper: clean
	rm ./hello
