instance creation
crearConNombre: unNombre conEdad: unaEdad conPeso: unPeso envergaduraAlas: laEnvergadura alturaVuelo: laAlturaVuelo
	| unAve |
	unAve := self new.
	unAve inicializarConNombre: unNombre conEdad: unaEdad conPeso: unPeso envergaduraAlas: laEnvergadura alturaVuelo: laAlturaVuelo.
	^ unAve 