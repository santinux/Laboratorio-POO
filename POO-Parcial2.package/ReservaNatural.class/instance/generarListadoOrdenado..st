as yet unclassified
generarListadoOrdenado: unaEdad

	| listado |
	listado := SortedCollection new.
	listado := animales select: [ :unAnimal | unAnimal esMayorAEdad: unaEdad ].
	listado sortBlock: [ :unAnimal :otroAnimal |
		unAnimal getNombre < otroAnimal getNombre ].
	^ listado