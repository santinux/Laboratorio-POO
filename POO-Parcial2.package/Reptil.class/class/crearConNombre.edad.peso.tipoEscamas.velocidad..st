instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso tipoEscamas: elTipoEscamas velocidad: laVelocidad

	| unReptil |
	unReptil := self crearConNombre: unNombre edad: unaEdad peso: unPeso.
	unReptil inicializarTipoEscamas: elTipoEscamas velocidad: laVelocidad.
	^ unReptil