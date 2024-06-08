instance creation
crearConNombre: unNombre
	| l |
	l := self new.
	l inicializarConNombre: unNombre.
	^ l.