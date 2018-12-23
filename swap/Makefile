#
# Makefile for swap
#
# Author: Marc Durocher
# Creation Date: 2016
#

CC = gcc
AS = as


all: swap

swapxy.o:
	$(AS) -o swapxy.o swapxy.s

callswap.o:
	$(CC) -o callswap.o -c callswap.c

swap: swapxy.o callswap.o
	$(CC) -o swap swapxy.o callswap.o

clean:
	rm -rf *.o

mrproper: clean
	rm ./swap
