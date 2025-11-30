instance creation
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora
	| unContratoMudanzaLocal |
	unContratoMudanzaLocal  := super crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora.
	
	^ unContratoMudanzaLocal