instance creation
crearConNombre: unNombre conNroCliente: unNroCliente conNroLinea: unNroLinea conDireccion: unaDireccion
	| clientito |
	clientito := self new.
	clientito inicializarConNombre: unNombre conNroCliente: unNroCliente conNroLinea: unNroLinea conDireccion: unaDireccion.
	^ clientito.