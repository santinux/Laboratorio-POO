constructor
crearConRazonSocial: unaRazonSocial conPaginaWeb: unaPaginaWeb conTelefonoContacto: unTelefonoContacto conDireccion: unaDireccion conServicios: unaColServicios conClientes: unaColClientes conContratos: unaColContratos
	| temp |
	temp := self new.
	temp inicializarConRazonSocial: unaRazonSocial conPaginaWeb: unaPaginaWeb conTelefonoContacto: unTelefonoContacto conDireccion: unaDireccion conServicios: unaColServicios conClientes: unaColClientes conContratos: unaColContratos. 	^ temp.
    