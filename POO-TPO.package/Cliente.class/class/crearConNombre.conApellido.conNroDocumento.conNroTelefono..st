constructor
crearConNombre: unNombre conApellido: unApellido conNroDocumento: unNroDocumento conNroTelefono: unNroTelefono
	| c |
	c := self new.
	c inicializarConNombre: unNombre conApellido: unApellido conNroDocumento: unNroDocumento conNroTelefono: unNroTelefono.
	^ c.