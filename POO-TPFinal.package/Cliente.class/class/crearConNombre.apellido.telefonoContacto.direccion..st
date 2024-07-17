instance creation
crearConNombre: unNombre apellido: unApellido telefonoContacto: unTelefonoContacto direccion: unaDireccion
	| unCliente |
	unCliente := self new.
	unCliente inicializarNombre: unNombre apellido: unApellido telefonoContacto: unTelefonoContacto direccion: unaDireccion.
	^ unCliente