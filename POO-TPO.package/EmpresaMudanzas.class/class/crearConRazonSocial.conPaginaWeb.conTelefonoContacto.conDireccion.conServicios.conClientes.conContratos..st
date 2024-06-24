instance creation
crearConRazonSocial: unaRazonSocial conPaginaWeb: unaPaginaWeb conTelefonoContacto: unTelefonoContacto conDireccion: unaDireccion conServicios: unaColServicios conClientes: unaColClientes conContratos: unaColContratos
	| empresita |
	empresita := self new.
	empresita inicializarConRazonSocial: unaRazonSocial conPaginaWeb: unaPaginaWeb conTelefonoContacto: unTelefonoContacto conDireccion: unaDireccion conServicios: unaColServicios conClientes: unaColClientes conContratos: unaColContratos.
	^ empresita.