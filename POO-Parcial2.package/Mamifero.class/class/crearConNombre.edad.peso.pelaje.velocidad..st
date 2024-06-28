instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso pelaje: unPelaje velocidad: unaVelocidad

	| unMamifero |
	unMamifero := self new.
	unMamifero
		inicializarConNombre: unNombre
		edad: unaEdad
		peso: unPeso
		pelaje: unPelaje velocidad: unaVelocidad.
	^ unMamifero