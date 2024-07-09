instance creation
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaInicio: unaFechaInicio fechaFin: unaFechaFin
	| unContratoGuardamuebles |
	unContratoGuardamuebles := self crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos.
	unContratoGuardamuebles inicializarFechaInicio: unaFechaInicio fechaFin: unaFechaFin.
	^ unContratoGuardamuebles.