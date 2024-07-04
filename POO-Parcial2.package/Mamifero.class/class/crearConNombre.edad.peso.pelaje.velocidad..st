instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso pelaje: unPelaje velocidad: unaVelocidad

	| unMamifero |
	unMamifero := self
		              crearConNombre: unNombre
		              edad: unaEdad
		              peso: unPeso.
	unMamifero inicializarPelaje: unPelaje velocidad: unaVelocidad.
	^ unMamifero