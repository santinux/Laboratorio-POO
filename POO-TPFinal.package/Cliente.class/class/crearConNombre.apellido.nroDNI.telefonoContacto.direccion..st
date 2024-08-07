instance creation
crearConNombre: unNombre apellido: unApellido nroDNI: unNroDNI telefonoContacto: unTelefonoContacto direccion: unaDireccion

	| unCliente |
	unCliente := self new.
	unCliente
		inicializarNombre: unNombre
		apellido: unApellido
		nroDNI: unNroDNI
		telefonoContacto: unTelefonoContacto
		direccion: unaDireccion.
	^ unCliente