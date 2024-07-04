instance creation
crearConNombre: unNombre nroDNI: unNroDNI nroMovil: unNroMovil

	| unProtector |
	unProtector := self new.
	unProtector
		inicializarNombre: unNombre
		nroDNI: unNroDNI
		nroMovil: unNroMovil.
	^ unProtector