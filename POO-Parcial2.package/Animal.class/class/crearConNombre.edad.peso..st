instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso

	| unAnimal |
	unAnimal := self new.
	unAnimal inicializarConNombre: unNombre edad: unaEdad peso: unPeso.
	^ unAnimal