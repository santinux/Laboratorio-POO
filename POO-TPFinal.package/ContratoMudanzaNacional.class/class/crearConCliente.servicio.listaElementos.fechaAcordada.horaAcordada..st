instance creation
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora
	| unContratoMudanzaNacional |
	unContratoMudanzaNacional := super crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora.
	
	^ unContratoMudanzaNacional 