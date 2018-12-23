#include <stdio.h>

/*
#################################################
# A C program that calls a subroutine written	#
# in PowerPC assembly language.			#
#						#
# Author: Marc Durocher				#
#						#
# Year of creation: 2011			#
#						#
# License: MIT License				#
# 						#
# 						#
#################################################
*/

int main(int argc, char **argv){
	int x,y;
	x=0xA;
	y=0xB;

	// Print values of x and y before the swap
	printf("x=0x%0X\ty=0x%0X\n", x, y);

	/*
	 * Invoke the subroutine swapxy
	 * According to the ABI in PowerPC Linux
	 * 
	 * the 1st parameter &x is placed in register r3
	 * the 2nd parameter &y is placed in register r4
	 *
	 * swapxy directly works with memory addresses (~ pointers)
	 */
	swapxy(&x, &y);

	// Print values of x and y after the swap
	printf("x=0x%0X\ty=0x%0X\n", x, y);


	return 0;
}

