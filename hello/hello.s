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
# Result when invoked, and then return code	#
# requested:					#
# 						#
# 	$./hello				#
#	Bonjour					#
#	$ echo $?				#
#	111					#
# 						#
# Note: The return code is explicitly set at 111#
# 						#
#################################################
	.global main
	.text
main:
	mflr 27			# r27 <- LinkRegister
	lis 3,zone@ha		# load the address of the label zone:
	addi 3,3,zone@l		# in r3 (2 steps)
	bl puts			# call to the C function puts (libc)

	mtlr 27			# LinkRegister <- r27
	li 3,111		# Set the return code : 111 chosen here (r3 <-111)
	blr			# Branch to LinkRegister (return)

	.data
	.align 2
zone:
	.string "Bonjour"
	
