instance creation
crearConNombre: unNombre conDireccion: unaDireccion conTelefono: unNroTelefono conPaginaWeb: unaPaginaWeb
	| b |
	b := self new.
	b inicializarConNombre: unNombre conDireccion: unaDireccion conTelefono: unaDireccion conPaginaWeb: unaPaginaWeb.
	^ b.