instance creation
crearConNombre: unNombre conDireccion: unaDireccion
	| u |
	u := self new.
	u inicializarConNombre: unNombre conDireccion: unaDireccion.
	^ u.