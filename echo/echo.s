#################################################
# Example program 				#
# written in PowerPC assembly for GNU/Linux OS  #
#						#
# Author: Marc Durocher				#
#						#
# Year of creation: 2012			#
#						#
# License: MIT License				#
# 						#
# 						#
# Result when invoked with thoses parameters	#
# 						#
# 	$./echo 1 2 3				#
#	4./echo					#
#	1					#
#	2					#
#	3					#
#	Bonjour					#
#						#
# 						#
#################################################

	.global main		# define the label as global
	.text
main:
	mflr 27			# r27 <- LinkRegister 
	mr 13,3			# r13 <- r3	(argc)
	mr 14,4			# r14 <- r4	(argv)
	addi 3,3,48		# r3 <- r3 + 48 (transform argc in ASCII digit)
	bl putchar		# call to the putchar C function (libc)

	li 3,10			# r3 <- 10 (LF ASCII code)
	bl putchar		# call to the putchar C function (libc)

next:				# Prepare to loop over arguments
	lwz 3,0(14)		# r3 <- (r14)
	bl puts			# call to the puts C function from (libc)
	
	addi 14,14,4		# r14 <- r14 + 4 (4 bytes offset)
	addi 13,13,-1		# decrement r13
	cmpwi 13,0
	bgt next		# while r13 > 0 go to label :next


	lis 3,zone@ha		# load the address of label zone: in r3
	addi 3,3,zone@l
	bl puts			# call to the puts C function (libc)
	mtlr 27			# LinkRegister <- r27
	mr 3,13			# r3 <- r13
	blr			# go to the address stored in LinkRegister

	.data
	.align 2
zone:
	.string "Bonjour"
	
