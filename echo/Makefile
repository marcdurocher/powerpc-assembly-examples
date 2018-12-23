#
# Makefile for echo.s
#
# Author: Marc Durocher
# Creation Date: 2016
#

CC = gcc
AS = as


all: echo

echo.o:
	$(AS) -o echo.o echo.s

echo: echo.o
	$(CC) -o echo echo.o

clean:
	rm -rf *.o

mrproper: clean
	rm ./echo
