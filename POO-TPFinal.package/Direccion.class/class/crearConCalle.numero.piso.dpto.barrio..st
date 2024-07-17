instance creation
crearConCalle: unaCalle numero: unNumero piso: unPiso dpto: unDpto barrio: unBarrio

	| unaDireccion |
	unaDireccion := self new.
	unaDireccion
		inicializarCalle: unaCalle
		numero: unNumero
		piso: unPiso
		dpto: unDpto
		barrio: unBarrio.
	^ unaDireccion