as yet unclassified
crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora
	| unContratoMudanzaInternacional |
	unContratoMudanzaInternacional := super crearConCliente: unCliente servicio: unServicio listaElementos: unaListaElementos fechaAcordada: unaFecha horaAcordada: unaHora.
	
	^ unContratoMudanzaInternacional
	