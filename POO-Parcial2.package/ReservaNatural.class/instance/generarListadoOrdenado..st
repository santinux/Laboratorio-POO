as yet unclassified
generarListadoOrdenado: unaEdad
	| listado |
	listado := SortedCollection new.
	listado := animales select: [ :unAnimal | unAnimal getEdad > unaEdad ].
	listado sortBlock: [ :unAnimal :otroAnimal | unAnimal getNombre < otroAnimal getNombre ].
	^ listado.