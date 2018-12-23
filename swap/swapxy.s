#################################################
# Example program 				#
# written in PowerPC assembly for GNU/Linux OS  #
#						#
# Author: Marc Durocher				#
#						#
# Year of creation: 2011			#
#						#
# License: MIT License				#
# 						#
# 						#
#################################################


	.global swapxy	# l'etiquette est globale pour la fonction swapxy.

swapxy:
			# Suivant l'ABI Linux PowerPC,
			# le premiere parametre est dans r3
			# le suivant dans r4 (et ainsi de suite)

			# r3 contient l'adresse de x (r3 = &x)
			# r4 contient l'adresse de y (r4 = &y)

	lwz	5,0(3)	# r5 recoit la valeur de x : r5 <- (r3)
	lwz	6,0(4)	# r6 recoit le valeur de y : r6 <- (r4)
	stw	5,0(4)	# adresse de y recoit valeur de x: (r4) <- r5
	stw	6,0(3)	# adresse de x recoit valeur de y: (r3) <- r6

	blr		# retour a l'appelant
	
