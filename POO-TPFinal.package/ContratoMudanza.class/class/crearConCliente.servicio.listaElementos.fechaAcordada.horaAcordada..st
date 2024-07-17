instance creation
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFechaAcordada horaAcordada: unaHoraAcordada
	| unContratoMudanza |
	unContratoMudanza := self crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos.
	unContratoMudanza inicializarFechaAcordada: unaFechaAcordada horaAcordada: unaHoraAcordada.
	^ unContratoMudanza 