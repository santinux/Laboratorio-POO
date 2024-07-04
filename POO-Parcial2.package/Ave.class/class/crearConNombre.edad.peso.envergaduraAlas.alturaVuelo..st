instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso envergaduraAlas: laEnvergadura alturaVuelo: laAlturaVuelo

	| unAve |
	unAve := self crearConNombre: unNombre edad: unaEdad peso: unPeso.
	unAve
		inicializarEnvergaduraAlas: laEnvergadura
		alturaVuelo: laAlturaVuelo.
	^ unAve