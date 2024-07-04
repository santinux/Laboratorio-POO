instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso

	| unAnimal |
	unAnimal := self new.
	unAnimal inicializarNombre: unNombre edad: unaEdad peso: unPeso.
	^ unAnimal