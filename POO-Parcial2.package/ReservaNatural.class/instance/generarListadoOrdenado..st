as yet unclassified
generarListadoOrdenado: unaEdad

	| listado |
	listado := animales select: [ :unAnimal |
		           unAnimal esMayorAEdad: unaEdad ].
	listado asSortedCollection: [ :unAnimal :otroAnimal |
		unAnimal getNombre < otroAnimal getNombre ].
	^ listado