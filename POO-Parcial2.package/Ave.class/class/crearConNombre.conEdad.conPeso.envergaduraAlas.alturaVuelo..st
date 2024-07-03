instance creation
crearConNombre: unNombre conEdad: unaEdad conPeso: unPeso envergaduraAlas: laEnvergadura alturaVuelo: laAlturaVuelo

	| unAve |
	unAve := self
		         crearConNombre: unNombre
		         edad: unaEdad
		         peso: unPeso.
	unAve
		inicializarConEnvergaduraAlas: laEnvergadura
		alturaVuelo: laAlturaVuelo.
	^ unAve