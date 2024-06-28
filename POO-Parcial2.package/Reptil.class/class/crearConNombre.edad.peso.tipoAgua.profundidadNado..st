instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso tipoAgua: unTipoAgua profundidadNado: laProfundidad
	| unPez |
	unPez := self new.
	unPez inicializarConNombre: unNombre edad: unaEdad peso: unPeso tipoAgua: unTipoAgua profundidadNado: laProfundidad.
	^ unPez