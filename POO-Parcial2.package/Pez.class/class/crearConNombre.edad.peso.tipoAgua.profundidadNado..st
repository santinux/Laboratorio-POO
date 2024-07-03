instance creation
crearConNombre: unNombre edad: unaEdad peso: unPeso tipoAgua: unTipoAgua profundidadNado: laProfundidad

	| unPez |
	unPez := self crearConNombre: unNombre edad: unaEdad peso: unPeso.
	unPez inicializarConTipoAgua: unTipoAgua profundidadNado: laProfundidad.
	^ unPez