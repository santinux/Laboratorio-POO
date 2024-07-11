instance creation
crearConRazonSocial: unaRazonSocial paginaWeb: unaPaginaWeb telefonoContacto: unTelefonoContacto direccion: unaDireccion servicios: unaColServicios clientes: unaColClientes contratos: unaColContratos
 | unaEmpresa |
unaEmpresa := self new.
unaEmpresa inicializarRazonSocial: unaRazonSocial paginaWeb: unaPaginaWeb telefonoContacto: unTelefonoContacto direccion: unaDireccion servicios: unaColServicios clientes: unaColClientes contratos: unaColContratos.
^ unaEmpresa 