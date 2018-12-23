To assemble the program and link it execute the following command:
	make
or
	make all

To clean the working directory:
	make clean
or 
	make mrproper (remove the executable)

To run the program:
$ ./swap

The goal of this project is to illustrate the call of a subroutine
written in assembly language (PowerPC) from a main program in C.
We have to respect the ABI: Application Binary Interface of the OS.

Result should be

$ ./swap 
x=0xA	y=0xB
x=0xB	y=0xA
