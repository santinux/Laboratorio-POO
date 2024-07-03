instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso pelaje: unPelaje velocidad: unaVelocidad

	| unMamifero |
	unMamifero := self crearConNombre: unNombre
		edad: unaEdad
		peso: unPeso.
		unMamifero inicializarConPelaje: unPelaje velocidad: unaVelocidad.
	^ unMamifero